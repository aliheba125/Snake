.class public final Landroidx/appcompat/view/menu/rs1;
.super Landroidx/appcompat/view/menu/q02;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/rs1$a;
    }
.end annotation


# static fields
.field private static final zzc:Landroidx/appcompat/view/menu/rs1;

.field private static volatile zzd:Landroidx/appcompat/view/menu/t42;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/t42;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Landroidx/appcompat/view/menu/p12;

.field private zzf:Landroidx/appcompat/view/menu/p12;

.field private zzg:Landroidx/appcompat/view/menu/n12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/n12;"
        }
    .end annotation
.end field

.field private zzh:Landroidx/appcompat/view/menu/n12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/n12;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/rs1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/rs1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/rs1;->zzc:Landroidx/appcompat/view/menu/rs1;

    const-class v1, Landroidx/appcompat/view/menu/rs1;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q02;->t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->A()Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zze:Landroidx/appcompat/view/menu/p12;

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->A()Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzf:Landroidx/appcompat/view/menu/p12;

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->B()Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzg:Landroidx/appcompat/view/menu/n12;

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->B()Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzh:Landroidx/appcompat/view/menu/n12;

    return-void
.end method

.method public static synthetic G(Landroidx/appcompat/view/menu/rs1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/rs1;->f0()V

    return-void
.end method

.method public static synthetic H(Landroidx/appcompat/view/menu/rs1;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/rs1;->U(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final I(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzg:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->o(Landroidx/appcompat/view/menu/n12;)Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzg:Landroidx/appcompat/view/menu/n12;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzg:Landroidx/appcompat/view/menu/n12;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ax1;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic K(Landroidx/appcompat/view/menu/rs1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/rs1;->d0()V

    return-void
.end method

.method public static synthetic L(Landroidx/appcompat/view/menu/rs1;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/rs1;->M(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final M(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzf:Landroidx/appcompat/view/menu/p12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->p(Landroidx/appcompat/view/menu/p12;)Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzf:Landroidx/appcompat/view/menu/p12;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzf:Landroidx/appcompat/view/menu/p12;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ax1;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic O(Landroidx/appcompat/view/menu/rs1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/rs1;->c0()V

    return-void
.end method

.method public static synthetic P(Landroidx/appcompat/view/menu/rs1;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/rs1;->I(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final Q(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzh:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->o(Landroidx/appcompat/view/menu/n12;)Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzh:Landroidx/appcompat/view/menu/n12;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzh:Landroidx/appcompat/view/menu/n12;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ax1;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic S(Landroidx/appcompat/view/menu/rs1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rs1;->e0()V

    return-void
.end method

.method public static synthetic T(Landroidx/appcompat/view/menu/rs1;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/rs1;->Q(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final U(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zze:Landroidx/appcompat/view/menu/p12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->p(Landroidx/appcompat/view/menu/p12;)Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zze:Landroidx/appcompat/view/menu/p12;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zze:Landroidx/appcompat/view/menu/p12;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ax1;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static V()Landroidx/appcompat/view/menu/rs1$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rs1;->zzc:Landroidx/appcompat/view/menu/rs1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->w()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/rs1$a;

    return-object v0
.end method

.method public static synthetic W()Landroidx/appcompat/view/menu/rs1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rs1;->zzc:Landroidx/appcompat/view/menu/rs1;

    return-object v0
.end method

.method public static X()Landroidx/appcompat/view/menu/rs1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rs1;->zzc:Landroidx/appcompat/view/menu/rs1;

    return-object v0
.end method

.method private final c0()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->B()Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzg:Landroidx/appcompat/view/menu/n12;

    return-void
.end method

.method private final d0()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->A()Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzf:Landroidx/appcompat/view/menu/p12;

    return-void
.end method

.method private final f0()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->A()Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zze:Landroidx/appcompat/view/menu/p12;

    return-void
.end method


# virtual methods
.method public final J()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzf:Landroidx/appcompat/view/menu/p12;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final N()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzh:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final R()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zze:Landroidx/appcompat/view/menu/p12;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final Y()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzg:Landroidx/appcompat/view/menu/n12;

    return-object v0
.end method

.method public final Z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzf:Landroidx/appcompat/view/menu/p12;

    return-object v0
.end method

.method public final a0()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzh:Landroidx/appcompat/view/menu/n12;

    return-object v0
.end method

.method public final b0()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zze:Landroidx/appcompat/view/menu/p12;

    return-object v0
.end method

.method public final e0()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->B()Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzh:Landroidx/appcompat/view/menu/n12;

    return-void
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rs1;->zzg:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p2, Landroidx/appcompat/view/menu/fs1;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Landroidx/appcompat/view/menu/rs1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_1

    const-class p2, Landroidx/appcompat/view/menu/rs1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Landroidx/appcompat/view/menu/rs1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/q02$a;

    sget-object p3, Landroidx/appcompat/view/menu/rs1;->zzc:Landroidx/appcompat/view/menu/rs1;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/q02$a;-><init>(Landroidx/appcompat/view/menu/q02;)V

    sput-object p1, Landroidx/appcompat/view/menu/rs1;->zzd:Landroidx/appcompat/view/menu/t42;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Landroidx/appcompat/view/menu/rs1;->zzc:Landroidx/appcompat/view/menu/rs1;

    return-object p1

    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v2, "zzg"

    const-class v3, Landroidx/appcompat/view/menu/js1;

    const-string v4, "zzh"

    const-class v5, Landroidx/appcompat/view/menu/ss1;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    sget-object p3, Landroidx/appcompat/view/menu/rs1;->zzc:Landroidx/appcompat/view/menu/rs1;

    invoke-static {p3, p2, p1}, Landroidx/appcompat/view/menu/q02;->r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/appcompat/view/menu/rs1$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/rs1$a;-><init>(Landroidx/appcompat/view/menu/fs1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/appcompat/view/menu/rs1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/rs1;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
