package com.soebes.example.nine.jar;

public class Main
{
    public static void main( String[] args )
    {
        System.out.println( "Main from Java 9 (jar)" );
        if ( args.length > 0 )
        {
            for ( String arg : args )
            {
                System.out.println( " Arg: '" + arg + "'" );
            }
        }
    }
}
