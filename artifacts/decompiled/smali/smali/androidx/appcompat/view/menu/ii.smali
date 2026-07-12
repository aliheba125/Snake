.class public Landroidx/appcompat/view/menu/ii;
.super Landroidx/appcompat/view/menu/oo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/oo;-><init>(Lcom/google/android/material/textfield/a;)V

    return-void
.end method


# virtual methods
.method public s()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/oo;->b:Lcom/google/android/material/textfield/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/a;->W(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
