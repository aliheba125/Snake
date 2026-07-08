.class public final enum Landroidx/appcompat/view/menu/kt1$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/h12;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/kt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/kt1$b;

.field public static final enum o:Landroidx/appcompat/view/menu/kt1$b;

.field public static final enum p:Landroidx/appcompat/view/menu/kt1$b;

.field public static final enum q:Landroidx/appcompat/view/menu/kt1$b;

.field public static final enum r:Landroidx/appcompat/view/menu/kt1$b;

.field public static final s:Landroidx/appcompat/view/menu/f12;

.field public static final synthetic t:[Landroidx/appcompat/view/menu/kt1$b;


# instance fields
.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/appcompat/view/menu/kt1$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/appcompat/view/menu/kt1$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/appcompat/view/menu/kt1$b;->n:Landroidx/appcompat/view/menu/kt1$b;

    new-instance v1, Landroidx/appcompat/view/menu/kt1$b;

    const-string v2, "STRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Landroidx/appcompat/view/menu/kt1$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/appcompat/view/menu/kt1$b;->o:Landroidx/appcompat/view/menu/kt1$b;

    new-instance v2, Landroidx/appcompat/view/menu/kt1$b;

    const-string v3, "NUMBER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Landroidx/appcompat/view/menu/kt1$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroidx/appcompat/view/menu/kt1$b;->p:Landroidx/appcompat/view/menu/kt1$b;

    new-instance v3, Landroidx/appcompat/view/menu/kt1$b;

    const-string v4, "BOOLEAN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Landroidx/appcompat/view/menu/kt1$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/appcompat/view/menu/kt1$b;->q:Landroidx/appcompat/view/menu/kt1$b;

    new-instance v4, Landroidx/appcompat/view/menu/kt1$b;

    const-string v5, "STATEMENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Landroidx/appcompat/view/menu/kt1$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroidx/appcompat/view/menu/kt1$b;->r:Landroidx/appcompat/view/menu/kt1$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/appcompat/view/menu/kt1$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/kt1$b;->t:[Landroidx/appcompat/view/menu/kt1$b;

    new-instance v0, Landroidx/appcompat/view/menu/nt1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/nt1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/kt1$b;->s:Landroidx/appcompat/view/menu/f12;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/appcompat/view/menu/kt1$b;->m:I

    return-void
.end method

.method public static c(I)Landroidx/appcompat/view/menu/kt1$b;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/kt1$b;->r:Landroidx/appcompat/view/menu/kt1$b;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/appcompat/view/menu/kt1$b;->q:Landroidx/appcompat/view/menu/kt1$b;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/appcompat/view/menu/kt1$b;->p:Landroidx/appcompat/view/menu/kt1$b;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/appcompat/view/menu/kt1$b;->o:Landroidx/appcompat/view/menu/kt1$b;

    return-object p0

    :cond_4
    sget-object p0, Landroidx/appcompat/view/menu/kt1$b;->n:Landroidx/appcompat/view/menu/kt1$b;

    return-object p0
.end method

.method public static e()Landroidx/appcompat/view/menu/l12;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/rt1;->a:Landroidx/appcompat/view/menu/l12;

    return-object v0
.end method

.method public static values()[Landroidx/appcompat/view/menu/kt1$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/kt1$b;->t:[Landroidx/appcompat/view/menu/kt1$b;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/kt1$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/kt1$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/kt1$b;->m:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroidx/appcompat/view/menu/kt1$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/appcompat/view/menu/kt1$b;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
