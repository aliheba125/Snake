.class public Landroidx/appcompat/view/menu/ra$j;
.super Landroidx/appcompat/view/menu/t11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ra;->q(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/y11;Landroidx/appcompat/view/menu/y11;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroidx/appcompat/view/menu/ra;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ra;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ra$j;->c:Landroidx/appcompat/view/menu/ra;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ra$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/t11;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ra$j;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/s11;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ra$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/w51;->c(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ra$j;->a:Z

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/s11;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ra$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/w51;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/s11;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ra$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/w51;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/s11;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ra$j;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ra$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/w51;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/s11;->S(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    return-void
.end method
