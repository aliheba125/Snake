.class public final Landroidx/appcompat/view/menu/ss1;
.super Landroidx/appcompat/view/menu/q02;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ss1$a;
    }
.end annotation


# static fields
.field private static final zzc:Landroidx/appcompat/view/menu/ss1;

.field private static volatile zzd:Landroidx/appcompat/view/menu/t42;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/t42;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Landroidx/appcompat/view/menu/p12;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ss1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ss1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ss1;->zzc:Landroidx/appcompat/view/menu/ss1;

    const-class v1, Landroidx/appcompat/view/menu/ss1;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q02;->t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->A()Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ss1;->zzg:Landroidx/appcompat/view/menu/p12;

    return-void
.end method

.method public static synthetic H(Landroidx/appcompat/view/menu/ss1;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/ss1;->L(I)V

    return-void
.end method

.method public static synthetic I(Landroidx/appcompat/view/menu/ss1;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/ss1;->J(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final J(Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ss1;->zzg:Landroidx/appcompat/view/menu/p12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->p(Landroidx/appcompat/view/menu/p12;)Landroidx/appcompat/view/menu/p12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ss1;->zzg:Landroidx/appcompat/view/menu/p12;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ss1;->zzg:Landroidx/appcompat/view/menu/p12;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/ax1;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final L(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ss1;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/ss1;->zze:I

    iput p1, p0, Landroidx/appcompat/view/menu/ss1;->zzf:I

    return-void
.end method

.method public static M()Landroidx/appcompat/view/menu/ss1$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ss1;->zzc:Landroidx/appcompat/view/menu/ss1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->w()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ss1$a;

    return-object v0
.end method

.method public static synthetic N()Landroidx/appcompat/view/menu/ss1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ss1;->zzc:Landroidx/appcompat/view/menu/ss1;

    return-object v0
.end method


# virtual methods
.method public final G(I)J
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ss1;->zzg:Landroidx/appcompat/view/menu/p12;

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/p12;->j(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ss1;->zzf:I

    return v0
.end method

.method public final O()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ss1;->zzg:Landroidx/appcompat/view/menu/p12;

    return-object v0
.end method

.method public final P()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/ss1;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ss1;->zzg:Landroidx/appcompat/view/menu/p12;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Landroidx/appcompat/view/menu/ss1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_1

    const-class p2, Landroidx/appcompat/view/menu/ss1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Landroidx/appcompat/view/menu/ss1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/q02$a;

    sget-object p3, Landroidx/appcompat/view/menu/ss1;->zzc:Landroidx/appcompat/view/menu/ss1;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/q02$a;-><init>(Landroidx/appcompat/view/menu/q02;)V

    sput-object p1, Landroidx/appcompat/view/menu/ss1;->zzd:Landroidx/appcompat/view/menu/t42;

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
    sget-object p1, Landroidx/appcompat/view/menu/ss1;->zzc:Landroidx/appcompat/view/menu/ss1;

    return-object p1

    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    sget-object p3, Landroidx/appcompat/view/menu/ss1;->zzc:Landroidx/appcompat/view/menu/ss1;

    invoke-static {p3, p2, p1}, Landroidx/appcompat/view/menu/q02;->r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/appcompat/view/menu/ss1$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/ss1$a;-><init>(Landroidx/appcompat/view/menu/fs1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/appcompat/view/menu/ss1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ss1;-><init>()V

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
