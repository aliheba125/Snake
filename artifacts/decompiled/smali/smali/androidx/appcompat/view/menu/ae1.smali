.class public final Landroidx/appcompat/view/menu/ae1;
.super Landroidx/appcompat/view/menu/r;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/ae1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:I

.field public final n:Landroid/accounts/Account;

.field public final o:I

.field public final p:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/be1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/be1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ae1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/r;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/ae1;->m:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/ae1;->n:Landroid/accounts/Account;

    iput p3, p0, Landroidx/appcompat/view/menu/ae1;->o:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/ae1;->p:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/appcompat/view/menu/ae1;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/jr0;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Landroidx/appcompat/view/menu/ae1;->m:I

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ae1;->n:Landroid/accounts/Account;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Landroidx/appcompat/view/menu/ae1;->o:I

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/jr0;->i(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-object v2, p0, Landroidx/appcompat/view/menu/ae1;->p:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {p1, v1, v2, p2, v3}, Landroidx/appcompat/view/menu/jr0;->m(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/jr0;->b(Landroid/os/Parcel;I)V

    return-void
.end method
