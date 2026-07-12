.class public Landroidx/appcompat/view/menu/p6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/appcompat/view/menu/p6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:D

.field public n:D

.field public o:D

.field public p:F

.field public q:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/p6$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/p6$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/p6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/p6;->m:D

    iput-wide v0, p0, Landroidx/appcompat/view/menu/p6;->n:D

    iput-wide v0, p0, Landroidx/appcompat/view/menu/p6;->o:D

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/p6;->p:F

    iput v0, p0, Landroidx/appcompat/view/menu/p6;->q:F

    iput v0, p0, Landroidx/appcompat/view/menu/p6;->r:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/p6;->m:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/p6;->n:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/p6;->o:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/p6;->r:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/p6;->p:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/p6;->q:F

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%02X"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(D)Ljava/lang/String;
    .locals 3

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    double-to-int v0, p0

    invoke-static {v0}, Landroidx/appcompat/view/menu/p6;->j(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroidx/appcompat/view/menu/p6;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Landroidx/appcompat/view/menu/p6;->m:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const-string p0, "N"

    return-object p0

    :cond_0
    const-string p0, "S"

    return-object p0
.end method

.method public static i(Landroidx/appcompat/view/menu/p6;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Landroidx/appcompat/view/menu/p6;->n:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const-string p0, "E"

    return-object p0

    :cond_0
    const-string p0, "W"

    return-object p0
.end method

.method public static j(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/view/menu/p6;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x30

    const/4 v3, 0x0

    if-nez p0, :cond_0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/location/Location;
    .locals 4

    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/appcompat/view/menu/p6;->m:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v1, p0, Landroidx/appcompat/view/menu/p6;->n:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    iget v1, p0, Landroidx/appcompat/view/menu/p6;->p:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    iget v1, p0, Landroidx/appcompat/view/menu/p6;->q:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "satellites"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "satellitesvalue"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/p6;->m:D

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/p6;->n:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BLocation{latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/p6;->m:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/p6;->n:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", altitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/p6;->o:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/p6;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bearing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/p6;->q:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/p6;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/p6;->m:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroidx/appcompat/view/menu/p6;->n:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroidx/appcompat/view/menu/p6;->o:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Landroidx/appcompat/view/menu/p6;->p:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroidx/appcompat/view/menu/p6;->q:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroidx/appcompat/view/menu/p6;->r:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
