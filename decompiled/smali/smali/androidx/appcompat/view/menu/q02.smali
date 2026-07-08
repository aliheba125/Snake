.class public abstract Landroidx/appcompat/view/menu/q02;
.super Landroidx/appcompat/view/menu/ax1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/q02$c;,
        Landroidx/appcompat/view/menu/q02$b;,
        Landroidx/appcompat/view/menu/q02$d;,
        Landroidx/appcompat/view/menu/q02$a;
    }
.end annotation


# static fields
.field private static zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/appcompat/view/menu/q02;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Landroidx/appcompat/view/menu/d72;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/q02;->zzc:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ax1;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/q02;->zzd:I

    invoke-static {}, Landroidx/appcompat/view/menu/d72;->k()Landroidx/appcompat/view/menu/d72;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q02;->zzb:Landroidx/appcompat/view/menu/d72;

    return-void
.end method

.method public static A()Landroidx/appcompat/view/menu/p12;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/u22;->g()Landroidx/appcompat/view/menu/u22;

    move-result-object v0

    return-object v0
.end method

.method public static B()Landroidx/appcompat/view/menu/n12;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/h52;->h()Landroidx/appcompat/view/menu/h52;

    move-result-object v0

    return-object v0
.end method

.method private final j()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/j52;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static n(Ljava/lang/Class;)Landroidx/appcompat/view/menu/q02;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/q02;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Landroidx/appcompat/view/menu/q02;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Landroidx/appcompat/view/menu/w72;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    sget v1, Landroidx/appcompat/view/menu/q02$c;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    if-eqz v0, :cond_1

    sget-object v1, Landroidx/appcompat/view/menu/q02;->zzc:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static o(Landroidx/appcompat/view/menu/n12;)Landroidx/appcompat/view/menu/n12;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/n12;->e(I)Landroidx/appcompat/view/menu/n12;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroidx/appcompat/view/menu/p12;)Landroidx/appcompat/view/menu/p12;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Landroidx/appcompat/view/menu/p12;->a(I)Landroidx/appcompat/view/menu/p12;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/z42;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/view/menu/z42;-><init>(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs s(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q02;->D()V

    sget-object v0, Landroidx/appcompat/view/menu/q02;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final u(Landroidx/appcompat/view/menu/q02;Z)Z
    .locals 3

    sget v0, Landroidx/appcompat/view/menu/q02$c;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/j52;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    sget p1, Landroidx/appcompat/view/menu/q02$c;->b:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static z()Landroidx/appcompat/view/menu/j12;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/d12;->g()Landroidx/appcompat/view/menu/d12;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final C()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/j52;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02;->D()V

    return-void
.end method

.method public final D()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q02;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/view/menu/q02;->zzd:I

    return-void
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/q02;->u(Landroidx/appcompat/view/menu/q02;Z)Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q02;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ax1;->e(Landroidx/appcompat/view/menu/j52;)I

    move-result v0

    return v0
.end method

.method public final synthetic b()Landroidx/appcompat/view/menu/w32;
    .locals 2

    sget v0, Landroidx/appcompat/view/menu/q02$c;->f:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    return-object v0
.end method

.method public final c(Landroidx/appcompat/view/menu/jz1;)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object v0

    invoke-static {p1}, Landroidx/appcompat/view/menu/pz1;->P(Landroidx/appcompat/view/menu/jz1;)Landroidx/appcompat/view/menu/pz1;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroidx/appcompat/view/menu/j52;->g(Ljava/lang/Object;Landroidx/appcompat/view/menu/d92;)V

    return-void
.end method

.method public final synthetic d()Landroidx/appcompat/view/menu/c42;
    .locals 2

    sget v0, Landroidx/appcompat/view/menu/q02$c;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02$b;

    return-object v0
.end method

.method public final e(Landroidx/appcompat/view/menu/j52;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q02;->v(Landroidx/appcompat/view/menu/j52;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serialized size must be non-negative, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ax1;->g()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ax1;->g()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q02;->v(Landroidx/appcompat/view/menu/j52;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ax1;->i(I)V

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object v0

    check-cast p1, Landroidx/appcompat/view/menu/q02;

    invoke-interface {v0, p0, p1}, Landroidx/appcompat/view/menu/j52;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q02;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q02;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;->j()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/ax1;->zza:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;->j()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/ax1;->zza:I

    :cond_1
    iget v0, p0, Landroidx/appcompat/view/menu/ax1;->zza:I

    return v0
.end method

.method public final i(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/q02;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/q02;->zzd:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serialized size must be non-negative, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/g42;->a(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Landroidx/appcompat/view/menu/j52;)I
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/v42;->a()Landroidx/appcompat/view/menu/v42;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/v42;->c(Ljava/lang/Object;)Landroidx/appcompat/view/menu/j52;

    move-result-object p1

    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/j52;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1, p0}, Landroidx/appcompat/view/menu/j52;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final w()Landroidx/appcompat/view/menu/q02$b;
    .locals 2

    sget v0, Landroidx/appcompat/view/menu/q02$c;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02$b;

    return-object v0
.end method

.method public final x()Landroidx/appcompat/view/menu/q02$b;
    .locals 2

    sget v0, Landroidx/appcompat/view/menu/q02$c;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/q02$b;->g(Landroidx/appcompat/view/menu/q02;)Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    return-object v0
.end method

.method public final y()Landroidx/appcompat/view/menu/q02;
    .locals 2

    sget v0, Landroidx/appcompat/view/menu/q02$c;->d:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/appcompat/view/menu/q02;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    return-object v0
.end method
