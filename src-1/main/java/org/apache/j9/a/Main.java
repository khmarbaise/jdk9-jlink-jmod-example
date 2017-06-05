package org.apache.j9.a;

public class Main {
  public static void main(String[] args) {
    System.out.println("Main from Java 9 (a)");
    if ( args.length > 0 ) {
      for (String arg : args) {
        System.out.println (" Arg: '" + arg + "'");
      }
    }
  }
}
