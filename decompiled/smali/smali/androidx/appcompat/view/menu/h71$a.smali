.class public Landroidx/appcompat/view/menu/h71$a;
.super Landroidx/appcompat/view/menu/t11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/h71;->k0(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/y11;ILandroidx/appcompat/view/menu/y11;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/appcompat/view/menu/h71;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h71;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h71$a;->d:Landroidx/appcompat/view/menu/h71;

    iput-object p2, p0, Landroidx/appcompat/view/menu/h71$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/appcompat/view/menu/h71$a;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/appcompat/view/menu/h71$a;->c:Landroid/view/View;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/t11;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/s11;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/h71$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/appcompat/view/menu/w51;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/u51;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h71$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/u51;->c(Landroid/view/View;)V

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/s11;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/h71$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/h71$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/appcompat/view/menu/w51;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/u51;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h71$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/u51;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/h71$a;->d:Landroidx/appcompat/view/menu/h71;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/s11;->f()V

    :goto_0
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/s11;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/h71$a;->c:Landroid/view/View;

    sget v1, Landroidx/appcompat/view/menu/rm0;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h71$a;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/appcompat/view/menu/w51;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/u51;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/h71$a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/u51;->c(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/s11;->S(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    return-void
.end method
