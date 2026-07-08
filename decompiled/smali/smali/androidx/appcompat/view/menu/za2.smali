.class public final Landroidx/appcompat/view/menu/za2;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/za2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Z

.field public final o:Z

.field public final p:Landroid/content/Context;

.field public final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/fc2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/fc2;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/za2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/za2;->m:Ljava/lang/String;

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/za2;->n:Z

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/za2;->o:Z

    invoke-static {p4}, Landroidx/appcompat/view/menu/b20$a;->asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/b20;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/appcompat/view/menu/za2;->p:Landroid/content/Context;

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/za2;->q:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/za2;->m:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroidx/appcompat/view/menu/jr0;->n(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/za2;->n:Z

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/za2;->o:Z

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/za2;->p:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/vf0;->k(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b20;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Landroidx/appcompat/view/menu/jr0;->h(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x5

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/za2;->q:Z

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/jr0;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
