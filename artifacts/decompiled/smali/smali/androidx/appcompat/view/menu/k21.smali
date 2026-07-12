.class public Landroidx/appcompat/view/menu/k21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i21;


# static fields
.field public static volatile e:Landroidx/appcompat/view/menu/l21;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ec;

.field public final b:Landroidx/appcompat/view/menu/ec;

.field public final c:Landroidx/appcompat/view/menu/tr0;

.field public final d:Landroidx/appcompat/view/menu/i41;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/ec;Landroidx/appcompat/view/menu/tr0;Landroidx/appcompat/view/menu/i41;Landroidx/appcompat/view/menu/ma1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/k21;->a:Landroidx/appcompat/view/menu/ec;

    iput-object p2, p0, Landroidx/appcompat/view/menu/k21;->b:Landroidx/appcompat/view/menu/ec;

    iput-object p3, p0, Landroidx/appcompat/view/menu/k21;->c:Landroidx/appcompat/view/menu/tr0;

    iput-object p4, p0, Landroidx/appcompat/view/menu/k21;->d:Landroidx/appcompat/view/menu/i41;

    invoke-virtual {p5}, Landroidx/appcompat/view/menu/ma1;->c()V

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/k21;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/k21;->e:Landroidx/appcompat/view/menu/l21;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l21;->c()Landroidx/appcompat/view/menu/k21;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Landroidx/appcompat/view/menu/pl;)Ljava/util/Set;
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/io;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/io;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/io;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    invoke-static {p0}, Landroidx/appcompat/view/menu/lo;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/lo;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/k21;->e:Landroidx/appcompat/view/menu/l21;

    if-nez v0, :cond_1

    const-class v0, Landroidx/appcompat/view/menu/k21;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/k21;->e:Landroidx/appcompat/view/menu/l21;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/ri;->d()Landroidx/appcompat/view/menu/l21$a;

    move-result-object v1

    invoke-interface {v1, p0}, Landroidx/appcompat/view/menu/l21$a;->b(Landroid/content/Context;)Landroidx/appcompat/view/menu/l21$a;

    move-result-object p0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/l21$a;->a()Landroidx/appcompat/view/menu/l21;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/view/menu/k21;->e:Landroidx/appcompat/view/menu/l21;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/ns0;Landroidx/appcompat/view/menu/n21;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/k21;->c:Landroidx/appcompat/view/menu/tr0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->f()Landroidx/appcompat/view/menu/d21;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->c()Landroidx/appcompat/view/menu/wo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/wo;->c()Landroidx/appcompat/view/menu/tj0;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d21;->f(Landroidx/appcompat/view/menu/tj0;)Landroidx/appcompat/view/menu/d21;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/k21;->b(Landroidx/appcompat/view/menu/ns0;)Landroidx/appcompat/view/menu/ap;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/tr0;->a(Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/ap;Landroidx/appcompat/view/menu/n21;)V

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/ns0;)Landroidx/appcompat/view/menu/ap;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/ap;->a()Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/k21;->a:Landroidx/appcompat/view/menu/ec;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/ec;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ap$a;->i(J)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/k21;->b:Landroidx/appcompat/view/menu/ec;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/ec;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ap$a;->k(J)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ap$a;->j(Ljava/lang/String;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/jo;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->b()Landroidx/appcompat/view/menu/lo;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/menu/jo;-><init>(Landroidx/appcompat/view/menu/lo;[B)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ap$a;->h(Landroidx/appcompat/view/menu/jo;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ns0;->c()Landroidx/appcompat/view/menu/wo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wo;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ap$a;->g(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/ap$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ap$a;->d()Landroidx/appcompat/view/menu/ap;

    move-result-object p1

    return-object p1
.end method

.method public e()Landroidx/appcompat/view/menu/i41;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/k21;->d:Landroidx/appcompat/view/menu/i41;

    return-object v0
.end method

.method public g(Landroidx/appcompat/view/menu/pl;)Landroidx/appcompat/view/menu/e21;
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/f21;

    invoke-static {p1}, Landroidx/appcompat/view/menu/k21;->d(Landroidx/appcompat/view/menu/pl;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/d21;->a()Landroidx/appcompat/view/menu/d21$a;

    move-result-object v2

    invoke-interface {p1}, Landroidx/appcompat/view/menu/pl;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/d21$a;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/d21$a;

    move-result-object v2

    invoke-interface {p1}, Landroidx/appcompat/view/menu/pl;->c()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/d21$a;->c([B)Landroidx/appcompat/view/menu/d21$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d21$a;->a()Landroidx/appcompat/view/menu/d21;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Landroidx/appcompat/view/menu/f21;-><init>(Ljava/util/Set;Landroidx/appcompat/view/menu/d21;Landroidx/appcompat/view/menu/i21;)V

    return-object v0
.end method
