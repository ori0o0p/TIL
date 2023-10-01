class Solution {
    public double solution(int[] arr) {
        double answer = 0;
        int cnt = 0;
        
        for (int a : arr) {
            answer += a;
            cnt++;
        }
        
        return answer/cnt;
    }
}