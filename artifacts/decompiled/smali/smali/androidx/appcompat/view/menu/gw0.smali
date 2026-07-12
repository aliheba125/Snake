.class public abstract Landroidx/appcompat/view/menu/gw0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/gw0$a;,
        Landroidx/appcompat/view/menu/gw0$b;,
        Landroidx/appcompat/view/menu/gw0$c;,
        Landroidx/appcompat/view/menu/gw0$d;,
        Landroidx/appcompat/view/menu/gw0$e;
    }
.end annotation


# static fields
.field public static final f:Landroidx/appcompat/view/menu/gw0$a;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/gw0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/gw0$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/gw0;->f:Landroidx/appcompat/view/menu/gw0$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/gw0;->i(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/gw0;->h(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V

    return-void
.end method

.method public static final h(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    iget-object p1, p1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const-string v1, "operation.fragment.mView"

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/view/menu/gw0$d$b;->e(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public static final i(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final u(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/gw0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gw0;->f:Landroidx/appcompat/view/menu/gw0$a;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/gw0$a;->a(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/mv;)Landroidx/appcompat/view/menu/gw0;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/hw0;)Landroidx/appcompat/view/menu/gw0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/gw0;->f:Landroidx/appcompat/view/menu/gw0$a;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/gw0$a;->b(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/hw0;)Landroidx/appcompat/view/menu/gw0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gw0;->d:Z

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/gw0$d;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->S0()Landroid/view/View;

    move-result-object v1

    const-string v2, "operation.fragment.requireView()"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/gw0$d$b;->e(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/gw0$d;->r(Z)V

    :cond_0
    return-void
.end method

.method public abstract d(Ljava/util/List;Z)V
.end method

.method public e(Ljava/util/List;)V
    .locals 6

    const-string v0, "operations"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/qc;->k(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroidx/appcompat/view/menu/qc;->x(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/qc;->u(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/gw0$b;

    iget-object v5, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/gw0$b;->d(Landroid/view/ViewGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/gw0;->c(Landroidx/appcompat/view/menu/gw0$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Landroidx/appcompat/view/menu/qc;->u(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->e()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/gw0;->y(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/gw0;->e(Ljava/util/List;)V

    return-void
.end method

.method public final g(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/tv;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    const-string v2, "fragmentStateManager.fragment"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/gw0;->o(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/av;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    const-string v2, "fragmentStateManager.fragment"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/gw0;->p(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/view/menu/gw0$d;->p(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    new-instance v1, Landroidx/appcompat/view/menu/gw0$c;

    invoke-direct {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/gw0$c;-><init>(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/tv;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/appcompat/view/menu/ew0;

    invoke-direct {p1, p0, v1}, Landroidx/appcompat/view/menu/ew0;-><init>(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/gw0$d;->a(Ljava/lang/Runnable;)V

    new-instance p1, Landroidx/appcompat/view/menu/fw0;

    invoke-direct {p1, p0, v1}, Landroidx/appcompat/view/menu/fw0;-><init>(Landroidx/appcompat/view/menu/gw0;Landroidx/appcompat/view/menu/gw0$c;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/gw0$d;->a(Ljava/lang/Runnable;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final j(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/tv;)V
    .locals 2

    const-string v0, "finalState"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$a;->n:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/gw0;->g(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/tv;)V

    return-void
.end method

.method public final k(Landroidx/appcompat/view/menu/tv;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->p:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$a;->m:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/appcompat/view/menu/gw0;->g(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/tv;)V

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/tv;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->n:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$a;->o:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/appcompat/view/menu/gw0;->g(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/tv;)V

    return-void
.end method

.method public final m(Landroidx/appcompat/view/menu/tv;)V
    .locals 2

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$a;->m:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/appcompat/view/menu/gw0;->g(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/tv;)V

    return-void
.end method

.method public final n()V
    .locals 11

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0;->q()V

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/gw0;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Landroidx/appcompat/view/menu/qc;->w(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/gw0$d;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with no incoming pendingOperations"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_b

    :cond_3
    :goto_1
    iget-object v5, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v1}, Landroidx/appcompat/view/menu/gw0$d;->d(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/gw0$d;->m()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Landroidx/appcompat/view/menu/qc;->w(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/gw0$d;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v5, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v6

    iget-boolean v6, v6, Landroidx/appcompat/view/menu/av;->m:Z

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/gw0$d;->d(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/gw0$d;->m()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0;->z()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Landroidx/appcompat/view/menu/qc;->w(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_8

    monitor-exit v0

    return-void

    :cond_8
    :try_start_1
    iget-object v4, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/gw0;->d:Z

    invoke-virtual {p0, v2, v4}, Landroidx/appcompat/view/menu/gw0;->d(Ljava/util/List;Z)V

    new-instance v4, Landroidx/appcompat/view/menu/ao0;

    invoke-direct {v4}, Landroidx/appcompat/view/menu/ao0;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroidx/appcompat/view/menu/ao0;->m:Z

    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/gw0$d;->g()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v5

    if-eqz v9, :cond_d

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/gw0$d;->g()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_a

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/gw0$b;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/gw0$b;->b()Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_5

    :cond_c
    :goto_4
    move v9, v5

    goto :goto_6

    :cond_d
    :goto_5
    move v9, v1

    :goto_6
    iput-boolean v9, v4, Landroidx/appcompat/view/menu/ao0;->m:Z

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v8

    iget-boolean v8, v8, Landroidx/appcompat/view/menu/av;->m:Z

    if-nez v8, :cond_9

    move v7, v1

    goto :goto_3

    :cond_e
    iget-boolean v6, v4, Landroidx/appcompat/view/menu/ao0;->m:Z

    if-eqz v6, :cond_10

    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/gw0$d;->g()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Landroidx/appcompat/view/menu/qc;->k(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_7

    :cond_f
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_10

    goto :goto_8

    :cond_10
    move v5, v1

    :goto_8
    iput-boolean v5, v4, Landroidx/appcompat/view/menu/ao0;->m:Z

    if-nez v7, :cond_11

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/gw0;->y(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/gw0;->e(Ljava/util/List;)V

    goto :goto_a

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/gw0;->y(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_9
    if-ge v5, v4, :cond_12

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p0, v6}, Landroidx/appcompat/view/menu/gw0;->c(Landroidx/appcompat/view/menu/gw0$d;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/gw0;->d:Z

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    :cond_13
    sget-object v1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_b
    monitor-exit v0

    throw v1
.end method

.method public final o(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/gw0$d;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->l()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/appcompat/view/menu/gw0$d;

    return-object v1
.end method

.method public final p(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/gw0$d;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->l()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/appcompat/view/menu/gw0$d;

    return-object v1
.end method

.method public final q()V
    .locals 8

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    iget-object v1, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0;->z()V

    iget-object v3, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/gw0;->y(Ljava/util/List;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Landroidx/appcompat/view/menu/qc;->w(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/gw0$d;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_0

    const-string v5, ""

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling running operation "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/gw0$d;->c(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Landroidx/appcompat/view/menu/qc;->w(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/gw0$d;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_3

    const-string v5, ""

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpecialEffectsController: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling pending operation "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v5, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/gw0$d;->c(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_5
    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2

    throw v0
.end method

.method public final r()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gw0;->e:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0;->n()V

    :cond_0
    return-void
.end method

.method public final s(Landroidx/appcompat/view/menu/tv;)Landroidx/appcompat/view/menu/gw0$d$a;
    .locals 4

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    const-string v0, "fragmentStateManager.fragment"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gw0;->o(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/gw0$d;->j()Landroidx/appcompat/view/menu/gw0$d$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gw0;->p(Landroidx/appcompat/view/menu/av;)Landroidx/appcompat/view/menu/gw0$d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->j()Landroidx/appcompat/view/menu/gw0$d$a;

    move-result-object v1

    :cond_1
    const/4 p1, -0x1

    if-nez v0, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/appcompat/view/menu/gw0$e;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    :goto_1
    if-eq v2, p1, :cond_3

    const/4 p1, 0x1

    if-eq v2, p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public final t()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final w()V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0;->z()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/appcompat/view/menu/gw0$d;

    sget-object v5, Landroidx/appcompat/view/menu/gw0$d$b;->m:Landroidx/appcompat/view/menu/gw0$d$b$a;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v6

    iget-object v6, v6, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    const-string v7, "operation.fragment.mView"

    invoke-static {v6, v7}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/gw0$d$b$a;->a(Landroid/view/View;)Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v4

    sget-object v6, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    if-ne v4, v6, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Landroidx/appcompat/view/menu/gw0$d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/av;->X()Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/gw0;->e:Z

    sget-object v1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final x(Landroidx/appcompat/view/menu/h7;)V
    .locals 5

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Processing Progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h7;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/qc;->k(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroidx/appcompat/view/menu/qc;->x(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/qc;->u(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/gw0$b;

    iget-object v4, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v4}, Landroidx/appcompat/view/menu/gw0$b;->e(Landroidx/appcompat/view/menu/h7;Landroid/view/ViewGroup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final y(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/gw0$d;->q()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/gw0$d;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/qc;->k(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroidx/appcompat/view/menu/qc;->x(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/qc;->u(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/gw0$b;

    iget-object v3, p0, Landroidx/appcompat/view/menu/gw0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/gw0$b;->g(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final z()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->j()Landroidx/appcompat/view/menu/gw0$d$a;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/gw0$d$a;->n:Landroidx/appcompat/view/menu/gw0$d$a;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/av;->S0()Landroid/view/View;

    move-result-object v2

    const-string v3, "fragment.requireView()"

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/appcompat/view/menu/gw0$d$b;->m:Landroidx/appcompat/view/menu/gw0$d$b$a;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/gw0$d$b$a;->b(I)Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/gw0$d$a;->m:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/gw0$d;->p(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method
