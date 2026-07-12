.class public abstract Landroidx/appcompat/view/menu/gw0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/gw0$d$a;,
        Landroidx/appcompat/view/menu/gw0$d$b;,
        Landroidx/appcompat/view/menu/gw0$d$c;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/gw0$d$b;

.field public b:Landroidx/appcompat/view/menu/gw0$d$a;

.field public final c:Landroidx/appcompat/view/menu/av;

.field public final d:Ljava/util/List;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/av;)V
    .locals 1

    const-string v0, "finalState"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleImpact"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    iput-object p2, p0, Landroidx/appcompat/view/menu/gw0$d;->b:Landroidx/appcompat/view/menu/gw0$d$a;

    iput-object p3, p0, Landroidx/appcompat/view/menu/gw0$d;->c:Landroidx/appcompat/view/menu/av;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->d:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gw0$d;->i:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->j:Ljava/util/List;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/gw0$b;)V
    .locals 1

    const-string v0, "effect"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->h:Z

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->e:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->e()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->k:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Landroidx/appcompat/view/menu/qc;->u(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gw0$b;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/gw0$b;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;Z)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/gw0$d;->g:Z

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gw0$d;->c(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->h:Z

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->f:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(Landroidx/appcompat/view/menu/gw0$b;)V
    .locals 1

    const-string v0, "effect"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->e()V

    :cond_0
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->k:Ljava/util/List;

    return-object v0
.end method

.method public final h()Landroidx/appcompat/view/menu/gw0$d$b;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    return-object v0
.end method

.method public final i()Landroidx/appcompat/view/menu/av;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->c:Landroidx/appcompat/view/menu/av;

    return-object v0
.end method

.method public final j()Landroidx/appcompat/view/menu/gw0$d$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->b:Landroidx/appcompat/view/menu/gw0$d$a;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->i:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->e:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->f:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->g:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->h:Z

    return v0
.end method

.method public final p(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;)V
    .locals 4

    const-string v0, "finalState"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleImpact"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/appcompat/view/menu/gw0$d$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const-string v0, "SpecialEffectsController: For fragment "

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_4

    const-string v3, " mFinalState = "

    if-eq p2, v2, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$b;->n:Landroidx/appcompat/view/menu/gw0$d$b;

    if-eq p2, v1, :cond_6

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/appcompat/view/menu/gw0$d;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/appcompat/view/menu/gw0$d;->b:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to REMOVING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    sget-object p1, Landroidx/appcompat/view/menu/gw0$d$b;->n:Landroidx/appcompat/view/menu/gw0$d$b;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object p1, Landroidx/appcompat/view/menu/gw0$d$a;->o:Landroidx/appcompat/view/menu/gw0$d$a;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->b:Landroidx/appcompat/view/menu/gw0$d$a;

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/gw0$d;->i:Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object p2, Landroidx/appcompat/view/menu/gw0$d$b;->n:Landroidx/appcompat/view/menu/gw0$d$b;

    if-ne p1, p2, :cond_6

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/appcompat/view/menu/gw0$d;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/appcompat/view/menu/gw0$d;->b:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to ADDING."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    sget-object p1, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    sget-object p1, Landroidx/appcompat/view/menu/gw0$d$a;->n:Landroidx/appcompat/view/menu/gw0$d$a;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gw0$d;->b:Landroidx/appcompat/view/menu/gw0$d$a;

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/gw0$d;->i:Z

    :cond_6
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gw0$d;->h:Z

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gw0$d;->i:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "} {finalState = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->a:Landroidx/appcompat/view/menu/gw0$d$b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " lifecycleImpact = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->b:Landroidx/appcompat/view/menu/gw0$d$a;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " fragment = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$d;->c:Landroidx/appcompat/view/menu/av;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
