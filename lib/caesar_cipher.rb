# frozen_string_literal: true

# take string plus shift factor
def caesar_cipher(string, shift_factor)
  # array to store shifted and non shifted values
  ciphered_text = []
  # parse string
  strings = string.chars.to_a
  # iterate over the array
  strings.each do |string|
    if string.match?(/[[:alpha:]]/)
      letter_ordinal = string.ord

      if letter_ordinal.between?(65, 90)
        ('A'..'Z').map(&:ord)

        shifted_ordinal = letter_ordinal + shift_factor

        if shifted_ordinal < 65
          # get arr[-sf]
          shifted_letter = shifted_ordinal + 26
          # get string.chr
          shifted_string = shifted_letter.chr
          # arr << e.chr

        elsif shifted_ordinal > 90
          # arr[sf]
          shifted_letter = shifted_ordinal - 26
          # get string.chr
          shifted_string = shifted_letter.chr
          # arr << e.chr
        else
          # get e.char
          shifted_string = shifted_ordinal.chr
          # arr << e.chr
        end
        ciphered_text.push(shifted_string)

      elsif letter_ordinal.between?(97, 122)
        ('a'..'z').map(&:ord)
        shifted_ordinal = letter_ordinal + shift_factor

        if shifted_ordinal < 97
          # get arr[-sf]
          shifted_letter = shifted_ordinal + 26
          # get string.chr
          shifted_string = shifted_letter.chr
          # arr << e.chr

        elsif shifted_ordinal > 122
          # arr[sf]
          shifted_letter = shifted_ordinal - 26
          # get string.chr
          shifted_string = shifted_letter.chr
          # arr << e.chr
        else
          # get e.char
          shifted_string = shifted_ordinal.chr
          # arr << e.chr
        end
        ciphered_text.push(shifted_string)
      else
        puts 'ERROR'
      end
    else
      ciphered_text << string
    end
  end
  # join the ciphered array
  ciphered_text.join('')
  # return the array
end