package main

import (
	"bufio"
	"flag"
	"fmt"
	"log"
	"net"
	"strconv"
	"strings"
)

var local = flag.Bool("local", false, "Use localhost or not.")

func main() {
	flag.Parse()
	address := "pwnable.kr"
	if *local {
		address = "localhost"
	}
	conn, err := net.Dial("tcp", address + ":9007")
	if err != nil {
		log.Fatal(err)
	}
	reader := bufio.NewReader(conn)
	// Read until ready.
	for {
		text, err := reader.ReadString('\n')
		if err != nil {
			log.Fatal(err)
		}
		fmt.Println("msg:" + text)
		if strings.Contains(text, "Ready?") {
			break
		}
	}
	for {
		var text string
		for {
			text, err = reader.ReadString('\n')
			if err != nil {
				log.Fatal(err)
			}
			fmt.Println(text)
			if strings.Contains(text, "N=") {
				break
			}
		}
		fmt.Println("msg: " + text)
		var n, c int
		var s string
		fmt.Sscanf(text, "%2s%d %2s%d", &s, &n, &s, &c)

		l := 0
		for i,r := 0,n; i < c; i++ { // [l, r)
			m := (l + r) / 2
			query := ""
			for j:=l;j<m;j++ {
				query += " " + strconv.Itoa(j)
			}
			// fmt.Println("query: " + query)
			fmt.Fprintf(conn, query + "\n")
			text, err = reader.ReadString('\n')
			if err != nil {
				log.Fatal(err)
			}
			result, err := strconv.Atoi(strings.TrimSpace(text))
			if err != nil {
				log.Fatal(err)
			}
			if result % 10 == 0 {
				l = m
			} else {
				r = m
			}
			fmt.Printf("result: %d\n", result)
		}
		// Answer
		fmt.Fprintf(conn, "%d\n", l)
	}
}
