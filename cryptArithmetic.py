def isSolvable(words, result):
	mp = [-1]*(26)
	used = [0]*(10)
	Hash = [0]*(26)
	CharAtfront = [0]*(26)
	uniq = ""
	for word in range(len(words)):
		for i in range(len(words[word])):
			ch = words[word][i]
			Hash[ord(ch) - ord('A')] += pow(10, len(words[word]) - i - 1)
			if mp[ord(ch) - ord('A')] == -1:
				mp[ord(ch) - ord('A')] = 0
				uniq += str(ch)
			if i == 0 and len(words[word]) > 1:
				CharAtfront[ord(ch) - ord('A')] = 1
	for i in range(len(result)):
		ch = result[i]
		Hash[ord(ch) - ord('A')] -= pow(10, len(result) - i - 1)
		if mp[ord(ch) - ord('A')] == -1:
			mp[ord(ch) - ord('A')] = 0
			uniq += str(ch)
		if i == 0 and len(result) > 1:
			CharAtfront[ord(ch) - ord('A')] = 1
	mp = [-1]*(26)
	return True
def solve(words, i, S, mp, used, Hash, CharAtfront):
	if i == len(words):