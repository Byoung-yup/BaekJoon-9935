//
//  main.swift
//  BaekJoon#9935
//
//  Created by 김병엽 on 2023/04/04.
//

import Foundation

func solution() {
    
    let input = readLine()!.map { String($0) }
    let target = readLine()!
    
    let targetLen = target.count
    let lastCh = String(target.last!)
    var stack: [String] = []

    for ch in input {

        stack.append(ch)

        if ch == lastCh {

            let len = stack.count
            if len >= targetLen && stack[(len - targetLen)...].joined() == target {

                (0..<targetLen).forEach { _ in
                    stack.removeLast()
                }
            }
        }
    }
    
    print(stack.isEmpty ? "FRULA" : stack.joined())
    
}

solution()
