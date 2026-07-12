.class public final Landroidx/appcompat/view/menu/u6$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/u6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/u6$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final m:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/u6$m$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/u6$m$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/u6$m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object p1, p0, Landroidx/appcompat/view/menu/u6$m;->m:[Landroid/content/pm/Signature;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/u6$m;->m:[Landroid/content/pm/Signature;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Landroidx/appcompat/view/menu/u6$m;->m:[Landroid/content/pm/Signature;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroidx/appcompat/view/menu/v6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/u6$m;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/u6$m;->m:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
