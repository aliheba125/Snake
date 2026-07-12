.class public final Landroidx/appcompat/view/menu/oe2;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/oe2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Landroidx/appcompat/view/menu/w02;

.field public final o:Z

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/te2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/te2;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/oe2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/oe2;->m:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p2}, Landroidx/appcompat/view/menu/vf2;->j(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/zf2;

    move-result-object p2

    invoke-interface {p2}, Landroidx/appcompat/view/menu/zf2;->d()Landroidx/appcompat/view/menu/b20;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    move-object p2, p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p2}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    new-instance p1, Landroidx/appcompat/view/menu/x22;

    .line 5
    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/x22;-><init>([B)V

    :catch_0
    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/oe2;->n:Landroidx/appcompat/view/menu/w02;

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/oe2;->o:Z

    iput-boolean p4, p0, Landroidx/appcompat/view/menu/oe2;->p:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/w02;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/oe2;->m:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/oe2;->n:Landroidx/appcompat/view/menu/w02;

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/oe2;->o:Z

    iput-boolean p4, p0, Landroidx/appcompat/view/menu/oe2;->p:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/oe2;->m:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/oe2;->n:Landroidx/appcompat/view/menu/w02;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Landroidx/appcompat/view/menu/jr0;->h(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/oe2;->o:Z

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/oe2;->p:Z

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
