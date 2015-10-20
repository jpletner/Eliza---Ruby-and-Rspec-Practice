class Response
  @@responses = []
  @@dummies = []
  @@count = 0
  @@yelling_mode = false

  def self.add_response question, *answers
    @@responses << new(question, answers)
  end

  def self.add_dummies *answers
    @@dummies << new("$$", answers)
  end


  def self.get_answer question

    if @@count == 10
      puts "Goodbye"
    end
    if (question.include?("!"))
      @@yelling_mode = !@@yelling_mode
    end
    responses = @@responses.select{|r| r.good_for? question}
    if (@@yelling_mode == true)
      if responses.length > 0
        responses.sample.get_answers.sample.upcase
      else
        @@dummies.sample.get_answers.sample.upcase
      end
      @@count += 1

    else
      @@count = 0
      if responses.length > 0
        responses.sample.get_answers.sample
      else
        @@dummies.sample.get_answers.sample
      end
    end
  end

  def initialize question, answers
    @question = question.downcase
    @answers = answers
  end

  def good_for? question
    question.downcase.include? @question
  end

  def get_answers
    @answers
  end






end #END OF CLASS
