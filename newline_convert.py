import pyperclip

lines = []

print("Enter your text. Press Ctrl+Z, then Enter when finished:")

while True:
    try:
        lines.append(input())
    except EOFError:
        break

result = "\\n".join(lines)
result = result.replace('"', '\\"')

print("\nOutput:")
print(result)

pyperclip.copy(result)
print("\nCopied to clipboard!")