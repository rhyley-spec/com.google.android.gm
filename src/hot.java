public final class hot
  extends hln<hot>
{
  private int a = 0;
  private boolean b = false;
  
  public hot()
  {
    q = null;
    E = -1;
  }
  
  protected final int a()
  {
    int j = super.a();
    int i = j;
    if ((a & 0x1) != 0) {
      i = j + (hll.b(1) + 1);
    }
    return i;
  }
  
  public final void a(hll paramhll)
  {
    if ((a & 0x1) != 0) {
      paramhll.a(1, b);
    }
    super.a(paramhll);
  }
}

/* Location:
 * Qualified Name:     hot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */