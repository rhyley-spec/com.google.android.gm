public final class dzm
  extends hlt
{
  public dzl[] a = dzl.b();
  
  public dzm()
  {
    E = -1;
  }
  
  protected final int a()
  {
    int i = super.a();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          dzl localdzl = a[j];
          k = i;
          if (localdzl != null) {
            k = i + hll.d(1, localdzl);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public final void a(hll paramhll)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        dzl localdzl = a[i];
        if (localdzl != null) {
          paramhll.b(1, localdzl);
        }
        i += 1;
      }
    }
    super.a(paramhll);
  }
}

/* Location:
 * Qualified Name:     dzm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */