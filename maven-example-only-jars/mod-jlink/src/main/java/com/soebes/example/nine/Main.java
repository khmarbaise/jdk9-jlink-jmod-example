package com.soebes.example.nine;

public class Main {
    public static void main(String[] args) {
        System.out.println("Main from Java 9");
        if (args.length > 0) {
            for (String arg : args) {
                System.out.println(" Arg: '" + arg + "'");
            }
        }
    }
}
