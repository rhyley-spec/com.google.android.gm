.class Lcom/android/ex/chips/RecipientEditTextView$7;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic val$currentChip:Lcom/android/ex/chips/RecipientChip;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$currentChip:Lcom/android/ex/chips/RecipientChip;

    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1963
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$currentChip:Lcom/android/ex/chips/RecipientChip;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$900(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V

    .line 1964
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1965
    return-void
.end method
