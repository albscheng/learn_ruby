def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(input)
    input.inject(0) { |result, element| result + element }
end

def multiply(input)
    input.inject(1) { |product, element| product * element }
end

def power(num1, num2)
    answer = 1
    if num2 == 0
        1
    elsif num2 > 0
        num2.times do
            answer *= num1
        end
        answer
    else
        num2 *= -1
        num2.times do
            answer *= num1
        end
        1.0/answer
    end
end

def factorial(num)
    answer = 1
    if num == 0
        1
    else
        num.times do |current|
            answer *= (current + 1)
        end
    end
    answer
end

