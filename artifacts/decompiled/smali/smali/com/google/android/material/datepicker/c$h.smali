.class public Lcom/google/android/material/datepicker/c$h;
.super Landroidx/appcompat/view/menu/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/c;->m1(Landroid/view/View;Lcom/google/android/material/datepicker/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/android/material/datepicker/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/c$h;->d:Lcom/google/android/material/datepicker/c;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;Landroidx/appcompat/view/menu/p0;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b0;->g(Landroid/view/View;Landroidx/appcompat/view/menu/p0;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/c$h;->d:Lcom/google/android/material/datepicker/c;

    invoke-static {p1}, Lcom/google/android/material/datepicker/c;->k1(Lcom/google/android/material/datepicker/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/c$h;->d:Lcom/google/android/material/datepicker/c;

    sget v0, Landroidx/appcompat/view/menu/an0;->r:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/av;->O(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/c$h;->d:Lcom/google/android/material/datepicker/c;

    sget v0, Landroidx/appcompat/view/menu/an0;->p:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/av;->O(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/p0;->m0(Ljava/lang/CharSequence;)V

    return-void
.end method
