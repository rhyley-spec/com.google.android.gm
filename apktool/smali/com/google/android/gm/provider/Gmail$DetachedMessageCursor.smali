.class public final Lcom/google/android/gm/provider/Gmail$DetachedMessageCursor;
.super Lcom/google/android/gm/provider/Gmail$MessageCursor;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetachedMessageCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2908
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 2909
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 2913
    return-void
.end method
