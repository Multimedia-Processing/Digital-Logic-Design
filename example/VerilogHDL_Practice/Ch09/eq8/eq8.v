// Ch09 eq8.v
// �����O�_�۵�

// ���h�q���Ҳ�
module eq8 (D1,D2,Eq);
input  [7:0] D1,D2;		// �K�줸���J
output Eq;			// �@�줸���X
reg    W1,W2,Eq;		// �ŧi���Ȧs������

always@ (D1 or D2)
  begin
    cmp4 (D1[7:4],D2[7:4],W1);	// �I�s���� cmp4
    cmp4 (D1[3:0],D2[3:0],W2);	// �I�s���� cmp4
    Eq = W1 & W2;
  end
//-----------------------------------------------
// �]�p���� (�|�줸������)
task cmp4;
input  [3:0] A,B;		// �|�줸���J
output Y;			// �@�줸���X
reg    Y,W1,W2;			// �ŧi���Ȧs������
  begin
    cmp2 (A[3:2],B[3:2],W1);	// �I�s���� cmp2
    cmp2 (A[1:0],B[1:0],W2);	// �I�s���� cmp2
    Y = W1 & W2;
  end
endtask
//-----------------------------------------------
// �]�p���� (�G�줸������)
task cmp2;
input [1:0] A,B;		// �G�줸���J
output Y;			// �@�줸���X
  Y = cmp1(A[1],B[1]) & cmp1(A[0],B[0]);	// �I�s���� cmp1
endtask
//-----------------------------------------------
// �]�p���� (�@�줸������)
function cmp1;
input  A,B;			// �@�줸���J
  if (A == B)	 cmp1 = 1;
  else     	 cmp1 = 0;
endfunction

endmodule
