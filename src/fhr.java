import android.os.IInterface;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.realtime.internal.ParcelableCollaborator;

public abstract interface fhr
  extends IInterface
{
  public abstract void a(Status paramStatus);
  
  public abstract void a(ParcelableCollaborator[] paramArrayOfParcelableCollaborator);
}

/* Location:
 * Qualified Name:     fhr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */