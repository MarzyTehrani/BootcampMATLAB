function tests = test_addOne()
% TEST_ADDONE: Test harness for the "addOne" function.
tests = functiontests(localfunctions());
end % test_addOne

function testScalarDouble(T)
input = 1;
expected = 2;
actual = addOne(input);
verifyEqual(T, actual, expected)
end %testScalarDouble

function testComplex(T)
input = 3 + 5i;
expected = 4 + 5i;
actual = addOne(input);
verifyEqual(T, actual, expected)
end %testComplex

function testColumnVector(T)
input = zeros(4,1)
expected = ones(4,1)
actual = addOne(input);
verifyEqual(T, actual, expected, 'AbsTol', 1e-6)
%see also the RELTOL option 
%eps
end % testColumnVector

function testEye(T)
input = eye(2)
expected = [2 1; 1 2]
actual = addOne(input);
verifyEqual(T, actual, expected, 'AbsTol', 1e-6)
end % testEye

function testMike(T)
input = 'Mike';
expected = 'Njlf';
actual = char(addOne(input));
verifyEqual(T, actual, expected)
end %testMike

% Verify the error responses (test that the function throws the right
% erros)

function testNargin(T)
% Test with zero inputs
codeToEvaluate = @()addOne();
verifyError(T, codeToEvaluate, 'MATLAB:narginchk:notEnoughInputs')

% Test with too many inputs
codeToEvaluate = @()addOne(1,2);
verifyError(T, codeToEvaluate, 'MATLAB:TooManyInputs')

end %testNargin

function testEmpty(T)
codeToEvaluate = @()addOne(double.empty());
%note: {} is the same as double.empty which is not the same as single.empty
%or char.empty.
verifyError(T, codeToEvaluate, 'MATLAB:expectedNonempty')
end %testEmpty

% Write test code for non-double, non-char arrays.
function testNonDoubleNonChar(T)
codeToEvaluate = @()addOne(true);
verifyError(T, codeToEvaluate, 'MATLAB:invalidType')
end %testNonDoubleNonChar

function testNaNInf(T)
% NaN:
input = NaN;
expected = NaN;
actual = addOne(input);
verifyEqual(T, actual, expected)

%inf/=Inf
input = [Inf, -Inf];
expected = [Inf, -Inf];
actual = addOne(input);
verifyEqual(T, actual, expected)
end %testNaNInf