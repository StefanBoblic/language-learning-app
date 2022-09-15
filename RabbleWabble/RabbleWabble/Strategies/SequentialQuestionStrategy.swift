//
//  SequentialQuestionStrategy.swift
//  RabbleWabble
//
//  Created by Stefan Boblic on 08.09.2022.
//

import Foundation

public class SequentialQuestionStrategy: BaseQuestionStrategy {    
    
    public convenience init(questionGroupCaretaker: QuestionGroupCaretaker) {
        let questionGroup = questionGroupCaretaker.selectedQuestionGroup!
        let questions = questionGroup.questions
        self.init(questionGroupCaretaker: questionGroupCaretaker, questions: questions)
    }
}
