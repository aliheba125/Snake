.class public final Landroidx/appcompat/view/menu/qs1;
.super Landroidx/appcompat/view/menu/q02;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/a42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/qs1$a;,
        Landroidx/appcompat/view/menu/qs1$b;
    }
.end annotation


# static fields
.field private static final zzc:Landroidx/appcompat/view/menu/qs1;

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

.field private zzg:Landroidx/appcompat/view/menu/n12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/appcompat/view/menu/n12;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/qs1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/qs1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/qs1;->zzc:Landroidx/appcompat/view/menu/qs1;

    const-class v1, Landroidx/appcompat/view/menu/qs1;

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q02;->t(Ljava/lang/Class;Landroidx/appcompat/view/menu/q02;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q02;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/qs1;->zzf:I

    invoke-static {}, Landroidx/appcompat/view/menu/q02;->B()Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qs1;->zzg:Landroidx/appcompat/view/menu/n12;

    return-void
.end method

.method public static G()Landroidx/appcompat/view/menu/qs1$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qs1;->zzc:Landroidx/appcompat/view/menu/qs1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->w()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qs1$b;

    return-object v0
.end method

.method public static synthetic I(Landroidx/appcompat/view/menu/qs1;Landroidx/appcompat/view/menu/ls1;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qs1;->H(Landroidx/appcompat/view/menu/ls1;)V

    return-void
.end method

.method public static synthetic J()Landroidx/appcompat/view/menu/qs1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qs1;->zzc:Landroidx/appcompat/view/menu/qs1;

    return-object v0
.end method


# virtual methods
.method public final H(Landroidx/appcompat/view/menu/ls1;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/appcompat/view/menu/qs1;->zzg:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/n12;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/q02;->o(Landroidx/appcompat/view/menu/n12;)Landroidx/appcompat/view/menu/n12;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qs1;->zzg:Landroidx/appcompat/view/menu/n12;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qs1;->zzg:Landroidx/appcompat/view/menu/n12;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Landroidx/appcompat/view/menu/qs1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_1

    const-class p2, Landroidx/appcompat/view/menu/qs1;

    monitor-enter p2

    :try_start_0
    sget-object p1, Landroidx/appcompat/view/menu/qs1;->zzd:Landroidx/appcompat/view/menu/t42;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/appcompat/view/menu/q02$a;

    sget-object p3, Landroidx/appcompat/view/menu/qs1;->zzc:Landroidx/appcompat/view/menu/qs1;

    invoke-direct {p1, p3}, Landroidx/appcompat/view/menu/q02$a;-><init>(Landroidx/appcompat/view/menu/q02;)V

    sput-object p1, Landroidx/appcompat/view/menu/qs1;->zzd:Landroidx/appcompat/view/menu/t42;

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
    sget-object p1, Landroidx/appcompat/view/menu/qs1;->zzc:Landroidx/appcompat/view/menu/qs1;

    return-object p1

    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    invoke-static {}, Landroidx/appcompat/view/menu/qs1$a;->e()Landroidx/appcompat/view/menu/l12;

    move-result-object p3

    const-string v0, "zzg"

    const-class v1, Landroidx/appcompat/view/menu/ls1;

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b"

    sget-object p3, Landroidx/appcompat/view/menu/qs1;->zzc:Landroidx/appcompat/view/menu/qs1;

    invoke-static {p3, p2, p1}, Landroidx/appcompat/view/menu/q02;->r(Landroidx/appcompat/view/menu/w32;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Landroidx/appcompat/view/menu/qs1$b;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/qs1$b;-><init>(Landroidx/appcompat/view/menu/fs1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Landroidx/appcompat/view/menu/qs1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/qs1;-><init>()V

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
