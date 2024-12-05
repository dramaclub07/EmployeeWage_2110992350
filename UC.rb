def generator(nums)
    if nums == 1
        puts "PRESENT"
    else
        puts "ABSENT"
    end
end
class WageCalculator  
  WAGE_PER_HOUR = 20  
  FULL_DAY_HOUR = 8  
  PART_TIME_HOUR = 4  
  WORKING_DAYS = 20  
  MAX_HOURS = 100  

  def initialize  
    @total_hours = 0  
    @total_days = 0  
    @total_wage = 0  
  end  

  def total_wages  
    calculate_wage  
  end  

  def calculate_wage  
    while @total_hours < MAX_HOURS && @total_days < WORKING_DAYS  
      @total_days += 1  
      work_hours = get_work_hours  
      @total_hours += work_hours  
      @total_wage += work_hours * WAGE_PER_HOUR  
    end  
    display_results  
  end  

  def get_work_hours  
    # Randomly return full-time or part-time hours  
    rand(2) == 0 ? FULL_DAY_HOUR : PART_TIME_HOUR  
  end  
=begin
  def display_results  
    puts "Total Days Worked: #{@total_days}"  
    puts "Total Hours Worked: #{@total_hours}"  
    puts "Total Wages: $#{@total_wage}"  
  end  
end 
=end   

# Example of using the WageCalculator class  
calculator = WageCalculator.new  
calculator.total_wages  

# Generator function  
def generator(nums)  
  if nums == 1  
    puts "PRESENT"  
  else  
    puts "ABSENT"  
  end  
end  

result = rand(2)  
generator(result)