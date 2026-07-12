.class public Landroidx/appcompat/view/menu/s2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/appcompat/view/menu/s2;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/s2;->b:Z

    iput v1, p0, Landroidx/appcompat/view/menu/s2;->c:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/s2;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/appcompat/view/menu/s2;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/view/menu/s2;
    .locals 8

    new-instance v0, Landroidx/appcompat/view/menu/s2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/s2;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, v0, Landroidx/appcompat/view/menu/s2;->c:I

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, v0, Landroidx/appcompat/view/menu/s2;->d:Ljava/lang/String;

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, v0, Landroidx/appcompat/view/menu/s2;->a:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iput-boolean p1, v0, Landroidx/appcompat/view/menu/s2;->b:Z

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_3

    array-length p1, p0

    if-lez p1, :cond_3

    aget-object p0, p0, v2

    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_2

    aget-byte v5, p0, v4

    const-string v6, "%02x"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/appcompat/view/menu/s2;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public b()[B
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/s2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/s2;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/s2;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, 0x7

    array-length v4, v1

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    array-length v5, v2

    add-int/2addr v3, v5

    new-array v3, v3, [B

    iget-boolean v5, p0, Landroidx/appcompat/view/menu/s2;->b:Z

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    array-length v5, v0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    array-length v4, v0

    const/4 v5, 0x2

    invoke-static {v0, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v5, v0

    iget v4, p0, Landroidx/appcompat/view/menu/s2;->c:I

    invoke-virtual {p0, v3, v5, v4}, Landroidx/appcompat/view/menu/s2;->c([BII)V

    add-int/lit8 v4, v0, 0x6

    add-int/lit8 v0, v0, 0x7

    array-length v5, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    array-length v4, v1

    invoke-static {v1, v6, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    array-length v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    array-length v0, v2

    invoke-static {v2, v6, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public final c([BII)V
    .locals 2

    int-to-byte v0, p3

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method
