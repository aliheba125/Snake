.class public final Landroidx/appcompat/view/menu/cg0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/cg0$f;,
        Landroidx/appcompat/view/menu/cg0$g;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Landroidx/appcompat/view/menu/pf;

.field public final c:Landroidx/appcompat/view/menu/k4;

.field public d:Landroidx/appcompat/view/menu/bg0;

.field public e:Landroid/window/OnBackInvokedCallback;

.field public f:Landroid/window/OnBackInvokedDispatcher;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/cg0;-><init>(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/pf;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Landroidx/appcompat/view/menu/pf;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cg0;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Landroidx/appcompat/view/menu/cg0;->b:Landroidx/appcompat/view/menu/pf;

    .line 2
    new-instance p1, Landroidx/appcompat/view/menu/k4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/k4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cg0;->c:Landroidx/appcompat/view/menu/k4;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_1

    const/16 p2, 0x22

    if-lt p1, p2, :cond_0

    .line 3
    sget-object p1, Landroidx/appcompat/view/menu/cg0$g;->a:Landroidx/appcompat/view/menu/cg0$g;

    new-instance p2, Landroidx/appcompat/view/menu/cg0$a;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/cg0$a;-><init>(Landroidx/appcompat/view/menu/cg0;)V

    new-instance v0, Landroidx/appcompat/view/menu/cg0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/cg0$b;-><init>(Landroidx/appcompat/view/menu/cg0;)V

    new-instance v1, Landroidx/appcompat/view/menu/cg0$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/cg0$c;-><init>(Landroidx/appcompat/view/menu/cg0;)V

    new-instance v2, Landroidx/appcompat/view/menu/cg0$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/cg0$d;-><init>(Landroidx/appcompat/view/menu/cg0;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/appcompat/view/menu/cg0$g;->a(Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/dw;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/cg0$f;->a:Landroidx/appcompat/view/menu/cg0$f;

    new-instance p2, Landroidx/appcompat/view/menu/cg0$e;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/cg0$e;-><init>(Landroidx/appcompat/view/menu/cg0;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/cg0$f;->b(Landroidx/appcompat/view/menu/dw;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/cg0;->e:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method

.method public static final synthetic a(Landroidx/appcompat/view/menu/cg0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cg0;->d()V

    return-void
.end method

.method public static final synthetic b(Landroidx/appcompat/view/menu/cg0;Landroidx/appcompat/view/menu/h7;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/cg0;->f(Landroidx/appcompat/view/menu/h7;)V

    return-void
.end method

.method public static final synthetic c(Landroidx/appcompat/view/menu/cg0;Landroidx/appcompat/view/menu/h7;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/cg0;->g(Landroidx/appcompat/view/menu/h7;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->d:Landroidx/appcompat/view/menu/bg0;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->c:Landroidx/appcompat/view/menu/k4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/bg0;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Landroidx/appcompat/view/menu/bg0;

    :cond_2
    iput-object v1, p0, Landroidx/appcompat/view/menu/cg0;->d:Landroidx/appcompat/view/menu/bg0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bg0;->a()V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->d:Landroidx/appcompat/view/menu/bg0;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->c:Landroidx/appcompat/view/menu/k4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/bg0;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Landroidx/appcompat/view/menu/bg0;

    :cond_2
    iput-object v1, p0, Landroidx/appcompat/view/menu/cg0;->d:Landroidx/appcompat/view/menu/bg0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bg0;->b()V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public final f(Landroidx/appcompat/view/menu/h7;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->d:Landroidx/appcompat/view/menu/bg0;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->c:Landroidx/appcompat/view/menu/k4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/bg0;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    check-cast v0, Landroidx/appcompat/view/menu/bg0;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bg0;->c(Landroidx/appcompat/view/menu/h7;)V

    :cond_3
    return-void
.end method

.method public final g(Landroidx/appcompat/view/menu/h7;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->c:Landroidx/appcompat/view/menu/k4;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/bg0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/bg0;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/appcompat/view/menu/bg0;

    iput-object v1, p0, Landroidx/appcompat/view/menu/cg0;->d:Landroidx/appcompat/view/menu/bg0;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/bg0;->d(Landroidx/appcompat/view/menu/h7;)V

    :cond_2
    return-void
.end method

.method public final h(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 1

    const-string v0, "invoker"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cg0;->f:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/cg0;->h:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/cg0;->i(Z)V

    return-void
.end method

.method public final i(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0;->f:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Landroidx/appcompat/view/menu/cg0;->e:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/cg0;->g:Z

    if-nez v3, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/cg0$f;->a:Landroidx/appcompat/view/menu/cg0$f;

    invoke-virtual {p1, v0, v2, v1}, Landroidx/appcompat/view/menu/cg0$f;->d(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/cg0;->g:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/cg0;->g:Z

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/appcompat/view/menu/cg0$f;->a:Landroidx/appcompat/view/menu/cg0$f;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/cg0$f;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/cg0;->g:Z

    :cond_1
    :goto_0
    return-void
.end method
