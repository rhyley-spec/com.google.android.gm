.class final Lcom/google/android/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/common/base/Platform$1;

    invoke-direct {v0}, Lcom/google/android/common/base/Platform$1;-><init>()V

    sput-object v0, Lcom/google/android/common/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charBufferFromThreadLocal()[C
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/common/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method static precomputeCharMatcher(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .locals 1
    .param p0, "matcher"    # Lcom/google/android/common/base/CharMatcher;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/common/base/CharMatcher;->precomputedInternal()Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method
