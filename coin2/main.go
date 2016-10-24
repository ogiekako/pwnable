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
	conn, err := net.Dial("tcp", address + ":9008")
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
		var n, c int
		var s string
		fmt.Sscanf(text, "%2s%d %2s%d", &s, &n, &s, &c)
		fmt.Printf("n: %v, c: %v\n", n, c)

		var queries []string
		for i := 0; i < c; i++ {
			var query []byte
			for j := 0; j < n;j ++ {
				if ((j >> uint32(i)) & 1) == 1 {
					query = append(query, []byte(strconv.Itoa(j) + " ")...)
				}
			}
			queries = append(queries, strings.TrimSpace(string(query)))
		}
		allQuery := strings.Join(queries, "-")
		fmt.Printf("query: %v\n", allQuery)
		fmt.Fprintln(conn, allQuery)
		text, err = reader.ReadString('\n')
		if err != nil {
			log.Fatal(err)
		}
		text = strings.TrimSpace(text)
		fmt.Printf("resp: %v\n", text)
		rs := strings.Split(text, "-")
		result := 0
		for i:=0;i<c;i++ {
			r, err := strconv.Atoi(rs[i])
			if err != nil {
				log.Fatal(err)
			}
			if r % 10 == 9 {
				result |= 1 << uint32(i)
			}
		}
		// Answer
		fmt.Fprintf(conn, "%d\n", result)
	}
}
