.class public Landroidx/appcompat/view/menu/mx;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final A:[Lcom/google/android/gms/common/api/Scope;

.field public static final B:[Landroidx/appcompat/view/menu/hr;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/mx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:I

.field public final n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Landroid/os/IBinder;

.field public r:[Lcom/google/android/gms/common/api/Scope;

.field public s:Landroid/os/Bundle;

.field public t:Landroid/accounts/Account;

.field public u:[Landroidx/appcompat/view/menu/hr;

.field public v:[Landroidx/appcompat/view/menu/hr;

.field public w:Z

.field public x:I

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/f72;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/f72;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/mx;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Landroidx/appcompat/view/menu/mx;->A:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Landroidx/appcompat/view/menu/hr;

    sput-object v0, Landroidx/appcompat/view/menu/mx;->B:[Landroidx/appcompat/view/menu/hr;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Landroidx/appcompat/view/menu/hr;[Landroidx/appcompat/view/menu/hr;ZIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Landroidx/appcompat/view/menu/mx;->A:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-nez p9, :cond_2

    sget-object p9, Landroidx/appcompat/view/menu/mx;->B:[Landroidx/appcompat/view/menu/hr;

    :cond_2
    if-nez p10, :cond_3

    sget-object p10, Landroidx/appcompat/view/menu/mx;->B:[Landroidx/appcompat/view/menu/hr;

    :cond_3
    iput p1, p0, Landroidx/appcompat/view/menu/mx;->m:I

    iput p2, p0, Landroidx/appcompat/view/menu/mx;->n:I

    iput p3, p0, Landroidx/appcompat/view/menu/mx;->o:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Landroidx/appcompat/view/menu/mx;->p:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p4, p0, Landroidx/appcompat/view/menu/mx;->p:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_6

    if-eqz p5, :cond_5

    invoke-static {p5}, Landroidx/appcompat/view/menu/mz$a;->asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/mz;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/t0;->j(Landroidx/appcompat/view/menu/mz;)Landroid/accounts/Account;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/mx;->t:Landroid/accounts/Account;

    goto :goto_2

    :cond_6
    iput-object p5, p0, Landroidx/appcompat/view/menu/mx;->q:Landroid/os/IBinder;

    iput-object p8, p0, Landroidx/appcompat/view/menu/mx;->t:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Landroidx/appcompat/view/menu/mx;->r:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Landroidx/appcompat/view/menu/mx;->s:Landroid/os/Bundle;

    iput-object p9, p0, Landroidx/appcompat/view/menu/mx;->u:[Landroidx/appcompat/view/menu/hr;

    iput-object p10, p0, Landroidx/appcompat/view/menu/mx;->v:[Landroidx/appcompat/view/menu/hr;

    iput-boolean p11, p0, Landroidx/appcompat/view/menu/mx;->w:Z

    iput p12, p0, Landroidx/appcompat/view/menu/mx;->x:I

    iput-boolean p13, p0, Landroidx/appcompat/view/menu/mx;->y:Z

    iput-object p14, p0, Landroidx/appcompat/view/menu/mx;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mx;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/f72;->a(Landroidx/appcompat/view/menu/mx;Landroid/os/Parcel;I)V

    return-void
.end method
