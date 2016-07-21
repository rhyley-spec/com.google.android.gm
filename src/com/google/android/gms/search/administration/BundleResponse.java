package com.google.android.gms.search.administration;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import ejk;
import emj;
import fyn;

public class BundleResponse
  implements SafeParcelable, ejk
{
  public static final fyn CREATOR = new fyn();
  public Status a;
  public Bundle b;
  final int c;
  
  public BundleResponse()
  {
    c = 1;
  }
  
  public BundleResponse(int paramInt, Status paramStatus, Bundle paramBundle)
  {
    c = paramInt;
    a = paramStatus;
    b = paramBundle;
  }
  
  public final Status a()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = emj.a(paramParcel, 20293);
    emj.b(paramParcel, 1000, c);
    emj.a(paramParcel, 1, a, paramInt, false);
    emj.a(paramParcel, 2, b);
    emj.b(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.search.administration.BundleResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */