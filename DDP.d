import std.stdio;


void main(){
    Array data = new Array([806,673,720,173,763,41,132,270,476,321,88,364,519,564,847,227,424,613]);
    int m=18;
    data.sort();
    for (int i=0; i<m; i++){
            write(data.indices[i]," ");
        }
        writeln();

   
}


class Array {
    int[] values;
    int[] indices;
    ulong n; 
    int x;
    int y;

    this(int[] data)
    {
        values=data.dup;
        indices = new int[data.length];
        n=values.length;
        for (int i=0; i<data.length; i++)
        {
            indices[i]=i+1;
        }
    }

    void swap(ref int x, ref int y)
    {
    int temp = y;
    y = x;
    x = temp;
    }

    void sort()
    {
        for (int i=0; i<n; i++)
        {
            for (int j=0; j<n-1; j++)
            {
                if (values[j]>values[j+1])
                {
                    swap(values[j], values[j+1]);
                    swap(indices[j], indices[j+1]);
                }
        
            }
        }
    }

}