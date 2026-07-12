.class public final Landroidx/appcompat/view/menu/kp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/xd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/kp0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public final g:Landroidx/appcompat/view/menu/xd;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ud;Landroidx/appcompat/view/menu/xd;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ud;->g()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/il;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->f()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->b()Landroidx/appcompat/view/menu/ul0;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->b()Landroidx/appcompat/view/menu/ul0;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->b()Landroidx/appcompat/view/menu/ul0;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->b()Landroidx/appcompat/view/menu/ul0;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/il;->b()Landroidx/appcompat/view/menu/ul0;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ud;->k()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Landroidx/appcompat/view/menu/sl0;

    invoke-static {v5}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/kp0;->a:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/kp0;->b:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/kp0;->c:Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/kp0;->d:Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/kp0;->e:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ud;->k()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/kp0;->f:Ljava/util/Set;

    iput-object p2, p0, Landroidx/appcompat/view/menu/kp0;->g:Landroidx/appcompat/view/menu/xd;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->a:Ljava/util/Set;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->g:Landroidx/appcompat/view/menu/xd;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xd;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroidx/appcompat/view/menu/sl0;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Landroidx/appcompat/view/menu/kp0$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/kp0;->f:Ljava/util/Set;

    check-cast v0, Landroidx/appcompat/view/menu/sl0;

    invoke-direct {p1, v1, v0}, Landroidx/appcompat/view/menu/kp0$a;-><init>(Ljava/util/Set;Landroidx/appcompat/view/menu/sl0;)V

    return-object p1

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/ll;

    const-string v1, "Attempting to request an undeclared dependency %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ll;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->g:Landroidx/appcompat/view/menu/xd;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xd;->b(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ll;

    const-string v1, "Attempting to request an undeclared dependency Provider<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ll;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/Class;)Landroidx/appcompat/view/menu/el0;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/view/menu/ul0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/kp0;->b(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroidx/appcompat/view/menu/ul0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->g:Landroidx/appcompat/view/menu/xd;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xd;->e(Landroidx/appcompat/view/menu/ul0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ll;

    const-string v1, "Attempting to request an undeclared dependency %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ll;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Landroidx/appcompat/view/menu/ul0;)Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->g:Landroidx/appcompat/view/menu/xd;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xd;->f(Landroidx/appcompat/view/menu/ul0;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ll;

    const-string v1, "Attempting to request an undeclared dependency Set<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ll;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/kp0;->g:Landroidx/appcompat/view/menu/xd;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xd;->g(Landroidx/appcompat/view/menu/ul0;)Landroidx/appcompat/view/menu/el0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/ll;

    const-string v1, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/ll;-><init>(Ljava/lang/String;)V

    throw v0
.end method
