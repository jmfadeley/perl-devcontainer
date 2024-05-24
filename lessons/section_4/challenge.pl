#!/usr/bin/perl

while (true) {
  print "How old are you? Type in number in years, then press enter.\n";
  chomp($age = <STDIN>);

  print "How much do you weight? Enter in pounds, then press enter.\n";
  chomp($lbs = <STDIN>);  
  $kilograms = $lbs / 2.2;

  print "How tall are you? Enter height in feet on one line, then iches on the next.\n";
  chomp($feet = <STDIN>);
  chomp($inches = <STDIN>);
  $centimeters = (($feet * 12) + $inches) * 2.54;

  print "Are you male or female? Enter 'm' for male and 'f' for female.\n";
  chomp($sex = <STDIN>);


  print "Please look at the activity levels listed below. Then enter the number that corresponds to the level you are closest to on a weekly basis.\n";
  print("1)\tSedentary\t\tLittle or no exercise, desk job\n");
  print("2)\tLightly Active\t\tLittle exercise, 1-3 days a week\n");
  print("3)\tMod. Active\t\tModerate exercise, 3-5 days a week\n");
  print("4)\tVery Active\t\tHard exercise, 6-7 days a week\n");
  print("5)\tExtr. Active\t\tHard daily exercise & physical job\n");

  chomp($activity = <STDIN>);
  print "The activity level you chose is $activity\n";

  if ($sex eq 'm') {
    $sex = 'male';
    $bmr = 66 + (13.7 * $kilograms) + (5 * $centimeters) - (6.8 * $age);
  } else {
    $sex = 'female'; #This is not robust but I don't care for now.
    $bmr = 655 + (9.6 * $kilograms) + (1.8 * $centimeters) - (4.7 * $age);
  }

  if ($activity == 1) {
    $caloriesUsed = $bmr * 1.2;
  } elsif ($activity == 2) {
    $caloriesUsed = $bmr * 1.375;
  } elsif ($activity == 3) {
    $caloriesUsed = $bmr * 1.55;
  } elsif ($activity == 4) {
    $caloriesUsed = $bmr * 1.725;
  } elsif ($activity == 5) {
    $caloriesUsed = $bmr * 1.9;
  }

  print "You are a $age year old $sex that weights $kilograms kilograms and is $centimeters centimeters tall.\n";  
  print "Your Basal Metabolic Rate (BMR) is $bmr.\n";
  print "Your estimated daily caloric intake to maintain your weight is $caloriesUsed calories per day.\n";
  print "To lose weight, drop your calories by 15-20%.\n";
  print "Your calories with a 15 percent drop would be ", $caloriesUsed * .85, "\n";
  print "Your calories with a 20 percent drop would be ", $caloriesUsed * .8, "\n";

  print "\n\nWould you like to calculate calories again? Enter 'y' for yes, 'n' to quit.\n";
  chomp($again = <STDIN>);
  if ($again eq 'n' || $again eq 'N') {
    exit;
  }
  print "\n";
}