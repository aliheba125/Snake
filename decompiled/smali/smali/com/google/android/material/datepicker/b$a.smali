.class public Lcom/google/android/material/datepicker/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/b;
    .locals 3

    new-instance v0, Lcom/google/android/material/datepicker/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/material/datepicker/b;-><init>(JLcom/google/android/material/datepicker/b$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/google/android/material/datepicker/b;
    .locals 0

    new-array p1, p1, [Lcom/google/android/material/datepicker/b;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/b$a;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/b$a;->b(I)[Lcom/google/android/material/datepicker/b;

    move-result-object p1

    return-object p1
.end method
