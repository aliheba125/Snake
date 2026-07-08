.class public final Landroidx/appcompat/view/menu/hs1;
.super Landroidx/appcompat/view/menu/q02;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/hs1$a;
    }
.end annotation


# static fields
.field private static final zzc:Landroidx/appcompat/view/menu/hs1;

.field private static volatile zzd:Landroidx/appcompat/view/menu/t42;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/t42;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/hs1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/hs1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/hs1;->zzc:Landroidx/appcompat/view/menu/hs1;

    const-class v1, Landroidx/appcompat/view/menu/hs1;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q02;->t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;-><init>()V

    return-void
.end method

.method public static G()Landroidx/appcompat/view/menu/hs1$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/hs1;->zzc:Landroidx/appcompat/view/menu/hs1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->w()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/hs1$a;

    return-object v0
.end method

.method public static synthetic H(Landroidx/appcompat/view/menu/hs1;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hs1;->O(Z)V

    return-void
.end method

.method public static synthetic J()Landroidx/appcompat/view/menu/hs1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/hs1;->zzc:Landroidx/appcompat/view/menu/hs1;

    return-object v0
.end method

.method public static synthetic K(Landroidx/appcompat/view/menu/hs1;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hs1;->T(Z)V

    return-void
.end method

.method public static M()Landroidx/appcompat/view/menu/hs1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/hs1;->zzc:Landroidx/appcompat/view/menu/hs1;

    return-object v0
.end method

.method public static synthetic N(Landroidx/appcompat/view/menu/hs1;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hs1;->W(Z)V

    return-void
.end method

.method public static synthetic P(Landroidx/appcompat/view/menu/hs1;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hs1;->Z(Z)V

    return-void
.end method

.method public static synthetic S(Landroidx/appcompat/view/menu/hs1;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hs1;->L(Z)V

    return-void
.end method

.method public static synthetic V(Landroidx/appcompat/view/menu/hs1;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hs1;->I(Z)V

    return-void
.end method

.method public static synthetic Y(Landroidx/appcompat/view/menu/hs1;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hs1;->Q(Z)V

    return-void
.end method


# virtual methods
.method public final I(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/hs1;->zzk:Z

    return-void
.end method

.method public final L(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/hs1;->zzj:Z

    return-void
.end method

.method public final O(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/hs1;->zzf:Z

    return-void
.end method

.method public final Q(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/hs1;->zzl:Z

    return-void
.end method

.method public final R()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/hs1;->zzk:Z

    return v0
.end method

.method public final T(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/hs1;->zzg:Z

    return-void
.end method

.method public final U()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/hs1;->zzj:Z

    return v0
.end method

.method public final W(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/hs1;->zzh:Z

    return-void
.end method

.method public final X()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/hs1;->zzf:Z

    return v0
.end method

.method public final Z(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/appcompat/view/menu/hs1;->zze:I

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/hs1;->zzi:Z

    return-void
.end method

.method public final a0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/hs1;->zzl:Z

    return v0
.end method

.method public final b0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/hs1;->zzg:Z

    return v0
.end method

.method public final c0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/hs1;->zzh:Z

    return v0
.end method

.method public final d0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/hs1;->zzi:Z

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    sget-object p1, Landroidx/appcompat/view/menu/hs1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_1

    const-class p2, Landroidx/appcompat/view/menu/hs1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Landroidx/appcompat/view/menu/hs1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/q02$a;

    sget-object p3, Landroidx/appcompat/view/menu/hs1;->zzc:Landroidx/appcompat/view/menu/hs1;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/q02$a;-><init>(Landroidx/appcompat/view/menu/q02;)V

    sput-object p1, Landroidx/appcompat/view/menu/hs1;->zzd:Landroidx/appcompat/view/menu/t42;

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
    sget-object p1, Landroidx/appcompat/view/menu/hs1;->zzc:Landroidx/appcompat/view/menu/hs1;

    return-object p1

    :pswitch_4
    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzh"

    const-string v4, "zzi"

    const-string v5, "zzj"

    const-string v6, "zzk"

    const-string v7, "zzl"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006"

    sget-object p3, Landroidx/appcompat/view/menu/hs1;->zzc:Landroidx/appcompat/view/menu/hs1;

    invoke-static {p3, p2, p1}, Landroidx/appcompat/view/menu/q02;->r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/appcompat/view/menu/hs1$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/hs1$a;-><init>(Landroidx/appcompat/view/menu/fs1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/appcompat/view/menu/hs1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/hs1;-><init>()V

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
