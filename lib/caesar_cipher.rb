# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  ciphered_text = []
  strings = string.chars.to_a
  strings.each do |string|
    if string.match?(/[[:alpha:]]/)
      letter_ordinal = string.ord

      if letter_ordinal.between?(65, 90)
        ('A'..'Z').map(&:ord)

        shifted_ordinal = letter_ordinal + shift_factor

        if shifted_ordinal < 65
          shifted_letter = shifted_ordinal + 26
          shifted_string = shifted_letter.chr

        elsif shifted_ordinal > 90
          shifted_letter = shifted_ordinal - 26
          shifted_string = shifted_letter.chr
        else
          shifted_string = shifted_ordinal.chr
        end
        ciphered_text.push(shifted_string)

      elsif letter_ordinal.between?(97, 122)
        ('a'..'z').map(&:ord)
        shifted_ordinal = letter_ordinal + shift_factor

        if shifted_ordinal < 97
          shifted_letter = shifted_ordinal + 26
          shifted_string = shifted_letter.chr

        elsif shifted_ordinal > 122
          shifted_letter = shifted_ordinal - 26
          shifted_string = shifted_letter.chr
        else
          shifted_string = shifted_ordinal.chr
        end
        ciphered_text.push(shifted_string)
      else
        puts 'ERROR'
      end
    else
      ciphered_text << string
    end
  end
  ciphered_text.join('')
end
