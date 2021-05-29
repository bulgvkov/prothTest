def checkProth(n):
  k = 1
  while k < ceil(sqrt(n)):
    if floor((n - 1) / k) & floor((n - 2) / k) == 0:
      return True
    else:
       k = k + 2
  return False

def prothTest(n):
  if checkProth(n):
    R = IntegerModRing(n) 				#кольцо вычетов по mod n
    a = R(sage.misc.prandom.choice(range(2, n)))
    b = a ^ ((n - 1) / 2)
    if b == R(-1):
      print('n - простое')
    elif b != 1 and b != -1 and b ^ 2 == 1 or b ^ 2 != 1:
      print('n - составное')
    elif b == 1:
      prothTest(n)
  else:
    print('n не является числом Прота')