.class public Lcom/google/android/material/datepicker/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/c;->m1(Landroid/view/View;Lcom/google/android/material/datepicker/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/f;

.field public final synthetic b:Lcom/google/android/material/datepicker/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/c$a;->b:Lcom/google/android/material/datepicker/c;

    iput-object p2, p0, Lcom/google/android/material/datepicker/c$a;->a:Lcom/google/android/material/datepicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/datepicker/c$a;->b:Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/c;->u1()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->i2()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/c$a;->b:Lcom/google/android/material/datepicker/c;

    iget-object v1, p0, Lcom/google/android/material/datepicker/c$a;->a:Lcom/google/android/material/datepicker/f;

    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/f;->u(I)Landroidx/appcompat/view/menu/td0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/c;->x1(Landroidx/appcompat/view/menu/td0;)V

    :cond_0
    return-void
.end method
