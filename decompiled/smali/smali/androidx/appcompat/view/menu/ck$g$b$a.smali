.class public final Landroidx/appcompat/view/menu/ck$g$b$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/ck$g$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/ck$g;

.field public final synthetic o:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$g$b$a;->n:Landroidx/appcompat/view/menu/ck$g;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ck$g$b$a;->o:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ck$g$b$a;->c(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final c(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g;->w()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->P()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/gw0$d$b;->e(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g$b$a;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ck$g;->v()Landroidx/appcompat/view/menu/aw;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g$b$a;->n:Landroidx/appcompat/view/menu/ck$g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ck$g;->s()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/ck$g$b$a;->n:Landroidx/appcompat/view/menu/ck$g;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ck$g$b$a;->o:Landroid/view/ViewGroup;

    new-instance v4, Landroidx/appcompat/view/menu/jk;

    invoke-direct {v4, v2, v3}, Landroidx/appcompat/view/menu/jk;-><init>(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/view/menu/aw;->d(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g$b$a;->b()V

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object v0
.end method
