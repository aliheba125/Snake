.class public Landroidx/appcompat/view/menu/iz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/appcompat/view/menu/iz;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/iz;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/iz;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/iz;->b:Landroidx/appcompat/view/menu/iz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/iz;->a:Ljava/util/Map;

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/iz;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/iz;->b:Landroidx/appcompat/view/menu/iz;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/j10;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/iz;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/iz;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/j10;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/j10;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/j10;->b()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->B()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/a10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/wg0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/wg0;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/w71;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/w71;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/tz;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/tz;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/c20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/l30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/l30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/my;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/my;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/y30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/z30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/q00;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/q00;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/d30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/d30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/yz;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/yz;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/y10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/xz;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/xz;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/a00;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a00;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/kg;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/kg;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/b40;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/b40;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/p30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/p30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/mp0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/mp0;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/u10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/u10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/z20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/o10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/m10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/m10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/lz;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/lz;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/n30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/n30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/z00;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z00;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/oz;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/oz;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/t20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/s00;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/s00;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/h20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/h20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/t10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/o20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/s30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/s30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/g20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/g20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    invoke-static {}, Landroidx/appcompat/view/menu/r3;->g()Landroidx/appcompat/view/menu/r3;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/a9;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a9;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/pz;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/pz;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/w30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/w30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/e20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/appcompat/view/menu/w00;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/w00;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/r20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/vz;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/vz;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/appcompat/view/menu/j30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/j30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_4
    sget-object v0, Landroidx/appcompat/view/menu/d10;->a:Landroidx/appcompat/view/menu/go0;

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/appcompat/view/menu/e10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/appcompat/view/menu/e00;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/e00;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/b30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/b30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroidx/appcompat/view/menu/v00;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/v00;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/x10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/x10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/w20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/w20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_7
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroidx/appcompat/view/menu/c10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    new-instance v0, Landroidx/appcompat/view/menu/i10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/i10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_8
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroidx/appcompat/view/menu/m10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/m10;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_9
    sget-object v0, Landroidx/appcompat/view/menu/j20;->a:Landroidx/appcompat/view/menu/go0;

    if-eqz v0, :cond_a

    new-instance v0, Landroidx/appcompat/view/menu/k20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/k20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_a
    sget-object v0, Landroidx/appcompat/view/menu/l20;->a:Landroidx/appcompat/view/menu/go0;

    if-eqz v0, :cond_b

    new-instance v0, Landroidx/appcompat/view/menu/m20;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/m20;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_b
    sget-object v0, Landroidx/appcompat/view/menu/e30;->a:Landroidx/appcompat/view/menu/go0;

    if-eqz v0, :cond_c

    new-instance v0, Landroidx/appcompat/view/menu/f30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/f30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_c
    sget-object v0, Landroidx/appcompat/view/menu/g30;->a:Landroidx/appcompat/view/menu/go0;

    if-eqz v0, :cond_d

    new-instance v0, Landroidx/appcompat/view/menu/h30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/h30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_d
    sget-object v0, Landroidx/appcompat/view/menu/u30;->a:Landroidx/appcompat/view/menu/go0;

    if-eqz v0, :cond_e

    new-instance v0, Landroidx/appcompat/view/menu/t30;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/t30;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iz;->a(Landroidx/appcompat/view/menu/j10;)V

    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/iz;->e()V

    sget-object v0, Landroidx/appcompat/view/menu/n8;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$b;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/iz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/j10;

    :try_start_0
    invoke-interface {v1}, Landroidx/appcompat/view/menu/j10;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
