.class public Landroidx/appcompat/view/menu/b70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/q60;
.implements Landroidx/appcompat/view/menu/lb;
.implements Landroidx/appcompat/view/menu/oh0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/b70$a;,
        Landroidx/appcompat/view/menu/b70$b;
    }
.end annotation


# static fields
.field public static final m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state"

    const-class v1, Landroidx/appcompat/view/menu/b70;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/b70;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->c()Landroidx/appcompat/view/menu/zn;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->d()Landroidx/appcompat/view/menu/zn;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/b70;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic A0(Landroidx/appcompat/view/menu/b70;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/b70;->z0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic E(Landroidx/appcompat/view/menu/b70;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->O()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic F(Landroidx/appcompat/view/menu/b70;Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b70;->R(Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final B(Landroidx/appcompat/view/menu/lb;)Landroidx/appcompat/view/menu/jb;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroidx/appcompat/view/menu/kb;

    invoke-direct {v3, p1}, Landroidx/appcompat/view/menu/kb;-><init>(Landroidx/appcompat/view/menu/lb;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/appcompat/view/menu/q60$a;->d(Landroidx/appcompat/view/menu/q60;ZZLandroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/mm;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/jb;

    return-object p1
.end method

.method public final B0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->m0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/b70;->y0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C0(Landroidx/appcompat/view/menu/t40;Ljava/lang/Object;)Z
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Landroidx/appcompat/view/menu/c70;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/b70;->q0(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/b70;->r0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/b70;->Q(Landroidx/appcompat/view/menu/t40;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final D0(Landroidx/appcompat/view/menu/t40;Ljava/lang/Throwable;)Z
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->a0(Landroidx/appcompat/view/menu/t40;)Landroidx/appcompat/view/menu/ze0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Landroidx/appcompat/view/menu/b70$b;

    invoke-direct {v2, v0, v1, p2}, Landroidx/appcompat/view/menu/b70$b;-><init>(Landroidx/appcompat/view/menu/ze0;ZLjava/lang/Throwable;)V

    sget-object v3, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, p1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/b70;->o0(Landroidx/appcompat/view/menu/ze0;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final E0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/view/menu/t40;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/zn;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroidx/appcompat/view/menu/z60;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Landroidx/appcompat/view/menu/kb;

    if-nez v0, :cond_3

    instance-of v0, p2, Landroidx/appcompat/view/menu/nd;

    if-nez v0, :cond_3

    check-cast p1, Landroidx/appcompat/view/menu/t40;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/b70;->C0(Landroidx/appcompat/view/menu/t40;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Landroidx/appcompat/view/menu/t40;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/b70;->F0(Landroidx/appcompat/view/menu/t40;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final F0(Landroidx/appcompat/view/menu/t40;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->a0(Landroidx/appcompat/view/menu/t40;)Landroidx/appcompat/view/menu/ze0;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/b70$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/view/menu/b70$b;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    new-instance v1, Landroidx/appcompat/view/menu/b70$b;

    invoke-direct {v1, v0, v3, v2}, Landroidx/appcompat/view/menu/b70$b;-><init>(Landroidx/appcompat/view/menu/ze0;ZLjava/lang/Throwable;)V

    :cond_2
    new-instance v3, Landroidx/appcompat/view/menu/bo0;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/bo0;-><init>()V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b70$b;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1, v4}, Landroidx/appcompat/view/menu/b70$b;->k(Z)V

    if-eq v1, p1, :cond_4

    sget-object v5, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v5, p0, p1, v1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_4
    :try_start_2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b70$b;->g()Z

    move-result v5

    instance-of v6, p2, Landroidx/appcompat/view/menu/nd;

    if-eqz v6, :cond_5

    move-object v6, p2

    check-cast v6, Landroidx/appcompat/view/menu/nd;

    goto :goto_1

    :cond_5
    move-object v6, v2

    :goto_1
    if-eqz v6, :cond_6

    iget-object v6, v6, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/b70$b;->a(Ljava/lang/Throwable;)V

    :cond_6
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b70$b;->e()Ljava/lang/Throwable;

    move-result-object v6

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v2, v6

    :cond_7
    iput-object v2, v3, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    sget-object v3, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/view/menu/b70;->o0(Landroidx/appcompat/view/menu/ze0;Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->U(Landroidx/appcompat/view/menu/t40;)Landroidx/appcompat/view/menu/kb;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v1, p1, p2}, Landroidx/appcompat/view/menu/b70;->G0(Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/appcompat/view/menu/c70;->b:Landroidx/appcompat/view/menu/my0;

    return-object p1

    :cond_9
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/b70;->T(Landroidx/appcompat/view/menu/b70$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_2
    monitor-exit v1

    throw p1
.end method

.method public final G(Ljava/lang/Object;Landroidx/appcompat/view/menu/ze0;Landroidx/appcompat/view/menu/z60;)Z
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/b70$c;

    invoke-direct {v0, p3, p0, p1}, Landroidx/appcompat/view/menu/b70$c;-><init>(Landroidx/appcompat/view/menu/ba0;Landroidx/appcompat/view/menu/b70;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ba0;->q()Landroidx/appcompat/view/menu/ba0;

    move-result-object p1

    invoke-virtual {p1, p3, p2, v0}, Landroidx/appcompat/view/menu/ba0;->v(Landroidx/appcompat/view/menu/ba0;Landroidx/appcompat/view/menu/ba0;Landroidx/appcompat/view/menu/ba0$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public final G0(Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)Z
    .locals 6

    :cond_0
    iget-object v0, p2, Landroidx/appcompat/view/menu/kb;->q:Landroidx/appcompat/view/menu/lb;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroidx/appcompat/view/menu/b70$a;

    invoke-direct {v3, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b70$a;-><init>(Landroidx/appcompat/view/menu/b70;Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/appcompat/view/menu/q60$a;->d(Landroidx/appcompat/view/menu/q60;ZZLandroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/mm;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/b70;->n0(Landroidx/appcompat/view/menu/ba0;)Landroidx/appcompat/view/menu/kb;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final H(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eq v1, p1, :cond_1

    if-eq v1, p1, :cond_1

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/op;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public I(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final J(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->K(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final K(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->Z()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/c70;->b:Landroidx/appcompat/view/menu/my0;

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->j0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/c70;->b:Landroidx/appcompat/view/menu/my0;

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/b70;->I(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public L(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->K(Ljava/lang/Object;)Z

    return-void
.end method

.method public final M(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/t40;

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroidx/appcompat/view/menu/b70$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b70$b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/appcompat/view/menu/nd;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->S(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Landroidx/appcompat/view/menu/nd;-><init>(Ljava/lang/Throwable;ZILandroidx/appcompat/view/menu/lj;)V

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/b70;->E0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1
.end method

.method public final N(Ljava/lang/Throwable;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->i0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->b0()Landroidx/appcompat/view/menu/jb;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v3, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/jb;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public P(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final Q(Landroidx/appcompat/view/menu/t40;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->b0()Landroidx/appcompat/view/menu/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/mm;->a()V

    sget-object v0, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/b70;->w0(Landroidx/appcompat/view/menu/jb;)V

    :cond_0
    instance-of v0, p2, Landroidx/appcompat/view/menu/nd;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Landroidx/appcompat/view/menu/nd;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    :cond_2
    instance-of p2, p1, Landroidx/appcompat/view/menu/z60;

    if-eqz p2, :cond_3

    :try_start_0
    move-object p2, p1

    check-cast p2, Landroidx/appcompat/view/menu/z60;

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/pd;->w(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    new-instance v0, Landroidx/appcompat/view/menu/qd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/qd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/b70;->e0(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroidx/appcompat/view/menu/t40;->f()Landroidx/appcompat/view/menu/ze0;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/b70;->p0(Landroidx/appcompat/view/menu/ze0;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final R(Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/b70;->n0(Landroidx/appcompat/view/menu/ba0;)Landroidx/appcompat/view/menu/kb;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b70;->G0(Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/b70;->T(Landroidx/appcompat/view/menu/b70$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public final S(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_2

    new-instance p1, Landroidx/appcompat/view/menu/r60;

    invoke-static {p0}, Landroidx/appcompat/view/menu/b70;->E(Landroidx/appcompat/view/menu/b70;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Landroidx/appcompat/view/menu/r60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/q60;)V

    goto :goto_1

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/oh0;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/oh0;->t()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final T(Landroidx/appcompat/view/menu/b70$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/appcompat/view/menu/nd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/view/menu/nd;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/b70$b;->g()Z

    move-result v2

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/b70$b;->j(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/view/menu/b70;->X(Landroidx/appcompat/view/menu/b70$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4, v3}, Landroidx/appcompat/view/menu/b70;->H(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_2
    :goto_2
    monitor-exit p1

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p2, Landroidx/appcompat/view/menu/nd;

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p2, v4, v0, v3, v1}, Landroidx/appcompat/view/menu/nd;-><init>(Ljava/lang/Throwable;ZILandroidx/appcompat/view/menu/lj;)V

    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/b70;->N(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/b70;->d0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/view/menu/nd;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nd;->b()Z

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/b70;->q0(Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/b70;->r0(Ljava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Landroidx/appcompat/view/menu/c70;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/b70;->Q(Landroidx/appcompat/view/menu/t40;Ljava/lang/Object;)V

    return-object p2

    :goto_4
    monitor-exit p1

    throw p2
.end method

.method public final U(Landroidx/appcompat/view/menu/t40;)Landroidx/appcompat/view/menu/kb;
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/view/menu/kb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/kb;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/t40;->f()Landroidx/appcompat/view/menu/ze0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->n0(Landroidx/appcompat/view/menu/ba0;)Landroidx/appcompat/view/menu/kb;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final V()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/t40;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/appcompat/view/menu/nd;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/c70;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/nd;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/view/menu/nd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/nd;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public final X(Landroidx/appcompat/view/menu/b70$b;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/b70$b;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/r60;

    invoke-static {p0}, Landroidx/appcompat/view/menu/b70;->E(Landroidx/appcompat/view/menu/b70;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Landroidx/appcompat/view/menu/r60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/q60;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_3
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public Y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a()Z
    .locals 2

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/b70;->x0(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a0(Landroidx/appcompat/view/menu/t40;)Landroidx/appcompat/view/menu/ze0;
    .locals 3

    invoke-interface {p1}, Landroidx/appcompat/view/menu/t40;->f()Landroidx/appcompat/view/menu/ze0;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Landroidx/appcompat/view/menu/zn;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/ze0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ze0;-><init>()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/z60;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/z60;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->u0(Landroidx/appcompat/view/menu/z60;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State should have list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final b0()Landroidx/appcompat/view/menu/jb;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/b70;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/jb;

    return-object v0
.end method

.method public c()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/t40;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/t40;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/t40;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c0()Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/pg0;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    check-cast v1, Landroidx/appcompat/view/menu/pg0;

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/pg0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/q60$a;->c(Landroidx/appcompat/view/menu/q60;Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p1

    return-object p1
.end method

.method public d0(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/r60;

    invoke-static {p0}, Landroidx/appcompat/view/menu/b70;->E(Landroidx/appcompat/view/menu/b70;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Landroidx/appcompat/view/menu/r60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/q60;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->L(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e0(Ljava/lang/Throwable;)V
    .locals 0

    throw p1
.end method

.method public final f0(Landroidx/appcompat/view/menu/q60;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->w0(Landroidx/appcompat/view/menu/jb;)V

    return-void

    :cond_0
    invoke-interface {p1}, Landroidx/appcompat/view/menu/q60;->a()Z

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/q60;->B(Landroidx/appcompat/view/menu/lb;)Landroidx/appcompat/view/menu/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->w0(Landroidx/appcompat/view/menu/jb;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->h0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/mm;->a()V

    sget-object p1, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->w0(Landroidx/appcompat/view/menu/jb;)V

    :cond_1
    return-void
.end method

.method public final g0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/nd;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroidx/appcompat/view/menu/b70$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/b70$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getKey()Landroidx/appcompat/view/menu/kh$c;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    return-object v0
.end method

.method public final h(Landroidx/appcompat/view/menu/fw;)Landroidx/appcompat/view/menu/mm;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/appcompat/view/menu/b70;->s(ZZLandroidx/appcompat/view/menu/fw;)Landroidx/appcompat/view/menu/mm;

    move-result-object p1

    return-object p1
.end method

.method public final h0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/view/menu/t40;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/q60$a;->e(Landroidx/appcompat/view/menu/q60;Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method

.method public final j0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/view/menu/b70$b;

    if-eqz v3, :cond_7

    monitor-enter v2

    :try_start_0
    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/b70$b;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/b70$b;->g()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->S(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    move-object p1, v2

    check-cast p1, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/b70$b;->a(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v2

    check-cast p1, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/b70$b;->e()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    move-object v0, p1

    :cond_5
    monitor-exit v2

    if-eqz v0, :cond_6

    check-cast v2, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/b70$b;->f()Landroidx/appcompat/view/menu/ze0;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/b70;->o0(Landroidx/appcompat/view/menu/ze0;Ljava/lang/Throwable;)V

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :goto_0
    monitor-exit v2

    throw p1

    :cond_7
    instance-of v3, v2, Landroidx/appcompat/view/menu/t40;

    if-eqz v3, :cond_b

    if-nez v1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->S(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_8
    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/t40;

    invoke-interface {v3}, Landroidx/appcompat/view/menu/t40;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v3, v1}, Landroidx/appcompat/view/menu/b70;->D0(Landroidx/appcompat/view/menu/t40;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance v3, Landroidx/appcompat/view/menu/nd;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Landroidx/appcompat/view/menu/nd;-><init>(Ljava/lang/Throwable;ZILandroidx/appcompat/view/menu/lj;)V

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/view/menu/b70;->E0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v4

    if-eq v3, v4, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-eq v3, v2, :cond_0

    return-object v3

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot happen in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-static {}, Landroidx/appcompat/view/menu/c70;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1
.end method

.method public final k0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/b70;->E0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->b()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->W(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final l0(Landroidx/appcompat/view/menu/fw;Z)Landroidx/appcompat/view/menu/z60;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    instance-of p2, p1, Landroidx/appcompat/view/menu/s60;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/s60;

    :cond_0
    if-nez v0, :cond_4

    new-instance v0, Landroidx/appcompat/view/menu/g60;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/g60;-><init>(Landroidx/appcompat/view/menu/fw;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroidx/appcompat/view/menu/z60;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/z60;

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/appcompat/view/menu/h60;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/h60;-><init>(Landroidx/appcompat/view/menu/fw;)V

    :cond_4
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/z60;->y(Landroidx/appcompat/view/menu/b70;)V

    return-object v0
.end method

.method public m0()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n0(Landroidx/appcompat/view/menu/ba0;)Landroidx/appcompat/view/menu/kb;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->q()Landroidx/appcompat/view/menu/ba0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->p()Landroidx/appcompat/view/menu/ba0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->r()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroidx/appcompat/view/menu/kb;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/kb;

    return-object p1

    :cond_1
    instance-of v0, p1, Landroidx/appcompat/view/menu/ze0;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/q60$a;->f(Landroidx/appcompat/view/menu/q60;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    return-object p1
.end method

.method public final o0(Landroidx/appcompat/view/menu/ze0;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/b70;->q0(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->o()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/view/menu/ba0;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Landroidx/appcompat/view/menu/s60;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/z60;

    :try_start_0
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/pd;->w(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/op;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/qd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/menu/qd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ba0;->p()Landroidx/appcompat/view/menu/ba0;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/b70;->e0(Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/b70;->N(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public p(Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/q60$a;->b(Landroidx/appcompat/view/menu/q60;Ljava/lang/Object;Landroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p0(Landroidx/appcompat/view/menu/ze0;Ljava/lang/Throwable;)V
    .locals 6

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->o()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/view/menu/ba0;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Landroidx/appcompat/view/menu/z60;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/z60;

    :try_start_0
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/pd;->w(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/op;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/qd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/menu/qd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ba0;->p()Landroidx/appcompat/view/menu/ba0;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/b70;->e0(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public q0(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public r0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final s(ZZLandroidx/appcompat/view/menu/fw;)Landroidx/appcompat/view/menu/mm;
    .locals 6

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/view/menu/b70;->l0(Landroidx/appcompat/view/menu/fw;Z)Landroidx/appcompat/view/menu/z60;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/zn;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/zn;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/zn;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v1, v0}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/b70;->t0(Landroidx/appcompat/view/menu/zn;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroidx/appcompat/view/menu/t40;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/t40;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/t40;->f()Landroidx/appcompat/view/menu/ze0;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/view/menu/z60;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/b70;->u0(Landroidx/appcompat/view/menu/z60;)V

    goto :goto_0

    :cond_3
    sget-object v4, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    if-eqz p1, :cond_8

    instance-of v5, v1, Landroidx/appcompat/view/menu/b70$b;

    if-eqz v5, :cond_8

    monitor-enter v1

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/b70$b;->e()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v5, p3, Landroidx/appcompat/view/menu/kb;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/b70$b;->h()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v2, v0}, Landroidx/appcompat/view/menu/b70;->G(Ljava/lang/Object;Landroidx/appcompat/view/menu/ze0;Landroidx/appcompat/view/menu/z60;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    monitor-exit v1

    return-object v0

    :cond_6
    move-object v4, v0

    :cond_7
    :try_start_1
    sget-object v5, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1

    throw p1

    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    invoke-interface {p3, v3}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v4

    :cond_a
    invoke-virtual {p0, v1, v2, v0}, Landroidx/appcompat/view/menu/b70;->G(Ljava/lang/Object;Landroidx/appcompat/view/menu/ze0;Landroidx/appcompat/view/menu/z60;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_b
    if-eqz p2, :cond_e

    instance-of p1, v1, Landroidx/appcompat/view/menu/nd;

    if-eqz p1, :cond_c

    check-cast v1, Landroidx/appcompat/view/menu/nd;

    goto :goto_4

    :cond_c
    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_d

    iget-object v3, v1, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    :cond_d
    invoke-interface {p3, v3}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object p1, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    return-object p1
.end method

.method public s0()V
    .locals 0

    return-void
.end method

.method public t()Ljava/util/concurrent/CancellationException;
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/b70$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b70$b;->e()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroidx/appcompat/view/menu/nd;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/nd;

    iget-object v1, v1, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/view/menu/t40;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Landroidx/appcompat/view/menu/r60;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/b70;->y0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Landroidx/appcompat/view/menu/r60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/q60;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot be cancelling child in this state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final t0(Landroidx/appcompat/view/menu/zn;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ze0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ze0;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zn;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/s40;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/s40;-><init>(Landroidx/appcompat/view/menu/ze0;)V

    move-object v0, v1

    :goto_0
    sget-object v1, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->B0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Landroidx/appcompat/view/menu/oh0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70;->K(Ljava/lang/Object;)Z

    return-void
.end method

.method public final u0(Landroidx/appcompat/view/menu/z60;)V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ze0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ze0;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ba0;->k(Landroidx/appcompat/view/menu/ba0;)Z

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->p()Landroidx/appcompat/view/menu/ba0;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, p1, v0}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final v0(Landroidx/appcompat/view/menu/z60;)V
    .locals 3

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/z60;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->c()Landroidx/appcompat/view/menu/zn;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_2
    instance-of v1, v0, Landroidx/appcompat/view/menu/t40;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/appcompat/view/menu/t40;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/t40;->f()Landroidx/appcompat/view/menu/ze0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ba0;->s()Z

    :cond_3
    return-void
.end method

.method public final w()Ljava/util/concurrent/CancellationException;
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/b70$b;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/b70$b;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/b70;->z0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/view/menu/t40;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroidx/appcompat/view/menu/nd;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/appcompat/view/menu/nd;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Landroidx/appcompat/view/menu/b70;->A0(Landroidx/appcompat/view/menu/b70;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/appcompat/view/menu/r60;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Landroidx/appcompat/view/menu/r60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/q60;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w0(Landroidx/appcompat/view/menu/jb;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/b70;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final x0(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Landroidx/appcompat/view/menu/zn;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/zn;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zn;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/c70;->c()Landroidx/appcompat/view/menu/zn;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->s0()V

    return v1

    :cond_2
    instance-of v0, p1, Landroidx/appcompat/view/menu/s40;

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/appcompat/view/menu/b70;->m:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/view/menu/s40;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/s40;->f()Landroidx/appcompat/view/menu/ze0;

    move-result-object v3

    invoke-static {v0, p0, p1, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b70;->s0()V

    return v1

    :cond_4
    return v3
.end method

.method public final y0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/view/menu/b70$b;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/b70$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/b70$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/b70$b;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/appcompat/view/menu/t40;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/appcompat/view/menu/t40;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/t40;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    :cond_3
    instance-of p1, p1, Landroidx/appcompat/view/menu/nd;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final z0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/r60;

    if-nez p2, :cond_1

    invoke-static {p0}, Landroidx/appcompat/view/menu/b70;->E(Landroidx/appcompat/view/menu/b70;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {v0, p2, p1, p0}, Landroidx/appcompat/view/menu/r60;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/q60;)V

    :cond_2
    return-object v0
.end method
