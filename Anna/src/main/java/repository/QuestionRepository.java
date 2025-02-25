package repository;

import model.Question;

import java.util.ArrayList;

public class QuestionRepository {
    private static QuestionRepository INSTANCE;
    private ArrayList<Question> questions;

    private QuestionRepository() {
        questions = new ArrayList<>();
        ArrayList<String> answers = new ArrayList<>();
        answers.add("A");
        answers.add("B");
        answers.add("C");
        answers.add("Programming language");

        questions.add(Question.builder()
                .text("What is java?")
                .answers(answers)
                .correctAnswer(3)
                .build());
    }

    public static QuestionRepository getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new QuestionRepository();
        }
        return INSTANCE;
    }

    public ArrayList<Question> getQuestions() {
        return questions;
    }
}
