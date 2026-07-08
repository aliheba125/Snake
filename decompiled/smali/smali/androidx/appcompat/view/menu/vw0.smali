.class public final Landroidx/appcompat/view/menu/vw0;
.super Landroidx/appcompat/view/menu/s;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ke0;
.implements Landroidx/appcompat/view/menu/ss;
.implements Landroidx/appcompat/view/menu/gx;


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Landroidx/appcompat/view/menu/vw0;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/vw0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/s;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/vw0;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vw0;->setValue(Ljava/lang/Object;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public b(Landroidx/appcompat/view/menu/ts;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Landroidx/appcompat/view/menu/vw0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/appcompat/view/menu/vw0$a;

    iget v1, v0, Landroidx/appcompat/view/menu/vw0$a;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/view/menu/vw0$a;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/vw0$a;

    invoke-direct {v0, p0, p2}, Landroidx/appcompat/view/menu/vw0$a;-><init>(Landroidx/appcompat/view/menu/vw0;Landroidx/appcompat/view/menu/xg;)V

    :goto_0
    iget-object p2, v0, Landroidx/appcompat/view/menu/vw0$a;->u:Ljava/lang/Object;

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/appcompat/view/menu/vw0$a;->w:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    if-eq v2, p1, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Landroidx/appcompat/view/menu/vw0$a;->t:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/appcompat/view/menu/vw0$a;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/view/menu/q60;

    iget-object v6, v0, Landroidx/appcompat/view/menu/vw0$a;->r:Ljava/lang/Object;

    check-cast v6, Landroidx/appcompat/view/menu/xw0;

    iget-object v7, v0, Landroidx/appcompat/view/menu/vw0$a;->q:Ljava/lang/Object;

    check-cast v7, Landroidx/appcompat/view/menu/ts;

    iget-object v8, v0, Landroidx/appcompat/view/menu/vw0$a;->p:Ljava/lang/Object;

    check-cast v8, Landroidx/appcompat/view/menu/vw0;

    :try_start_0
    invoke-static {p2}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/appcompat/view/menu/vw0$a;->t:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/appcompat/view/menu/vw0$a;->s:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/view/menu/q60;

    iget-object v6, v0, Landroidx/appcompat/view/menu/vw0$a;->r:Ljava/lang/Object;

    check-cast v6, Landroidx/appcompat/view/menu/xw0;

    iget-object v7, v0, Landroidx/appcompat/view/menu/vw0$a;->q:Ljava/lang/Object;

    check-cast v7, Landroidx/appcompat/view/menu/ts;

    iget-object v8, v0, Landroidx/appcompat/view/menu/vw0$a;->p:Ljava/lang/Object;

    check-cast v8, Landroidx/appcompat/view/menu/vw0;

    :try_start_1
    invoke-static {p2}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_3
    iget-object p1, v0, Landroidx/appcompat/view/menu/vw0$a;->r:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroidx/appcompat/view/menu/xw0;

    iget-object p1, v0, Landroidx/appcompat/view/menu/vw0$a;->q:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/ts;

    iget-object v2, v0, Landroidx/appcompat/view/menu/vw0$a;->p:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/view/menu/vw0;

    :try_start_2
    invoke-static {p2}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Landroidx/appcompat/view/menu/op0;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s;->d()Landroidx/appcompat/view/menu/u;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/xw0;

    move-object v8, p0

    move-object v6, p2

    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p2

    sget-object v2, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    invoke-interface {p2, v2}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/q60;

    move-object v7, p1

    move-object v2, p2

    move-object p1, v3

    :cond_5
    :goto_2
    sget-object p2, Landroidx/appcompat/view/menu/vw0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_6

    invoke-static {v2}, Landroidx/appcompat/view/menu/x60;->d(Landroidx/appcompat/view/menu/q60;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_7
    sget-object p1, Landroidx/appcompat/view/menu/of0;->a:Landroidx/appcompat/view/menu/my0;

    if-ne p2, p1, :cond_8

    move-object p1, v3

    goto :goto_3

    :cond_8
    move-object p1, p2

    :goto_3
    iput-object v8, v0, Landroidx/appcompat/view/menu/vw0$a;->p:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/appcompat/view/menu/vw0$a;->q:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/appcompat/view/menu/vw0$a;->r:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/appcompat/view/menu/vw0$a;->s:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/appcompat/view/menu/vw0$a;->t:Ljava/lang/Object;

    iput v5, v0, Landroidx/appcompat/view/menu/vw0$a;->w:I

    invoke-interface {v7, p1, v0}, Landroidx/appcompat/view/menu/ts;->a(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, p2

    :cond_a
    :goto_4
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/xw0;->h()Z

    move-result p2

    if-nez p2, :cond_5

    iput-object v8, v0, Landroidx/appcompat/view/menu/vw0$a;->p:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/appcompat/view/menu/vw0$a;->q:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/appcompat/view/menu/vw0$a;->r:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/appcompat/view/menu/vw0$a;->s:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/appcompat/view/menu/vw0$a;->t:Ljava/lang/Object;

    iput v4, v0, Landroidx/appcompat/view/menu/vw0$a;->w:I

    invoke-virtual {v6, v0}, Landroidx/appcompat/view/menu/xw0;->e(Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_5

    return-object v1

    :goto_5
    invoke-virtual {v8, v6}, Landroidx/appcompat/view/menu/s;->g(Landroidx/appcompat/view/menu/u;)V

    throw p1
.end method

.method public c(Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)Landroidx/appcompat/view/menu/ss;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ww0;->d(Landroidx/appcompat/view/menu/uw0;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)Landroidx/appcompat/view/menu/ss;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Landroidx/appcompat/view/menu/u;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/vw0;->i()Landroidx/appcompat/view/menu/xw0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(I)[Landroidx/appcompat/view/menu/u;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/vw0;->j(I)[Landroidx/appcompat/view/menu/xw0;

    move-result-object p1

    return-object p1
.end method

.method public i()Landroidx/appcompat/view/menu/xw0;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/xw0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/xw0;-><init>()V

    return-object v0
.end method

.method public j(I)[Landroidx/appcompat/view/menu/xw0;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/view/menu/xw0;

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroidx/appcompat/view/menu/vw0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Landroidx/appcompat/view/menu/vw0;->d:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_5

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/vw0;->d:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s;->h()[Landroidx/appcompat/view/menu/u;

    move-result-object p2

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [Landroidx/appcompat/view/menu/xw0;

    if-eqz p2, :cond_3

    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/xw0;->g()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget p2, p0, Landroidx/appcompat/view/menu/vw0;->d:I

    if-ne p2, p1, :cond_4

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/vw0;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/s;->h()[Landroidx/appcompat/view/menu/u;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :goto_2
    monitor-exit p0

    throw p1

    :cond_5
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Landroidx/appcompat/view/menu/vw0;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/of0;->a:Landroidx/appcompat/view/menu/my0;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/vw0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
