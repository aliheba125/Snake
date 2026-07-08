.class public final enum Landroidx/appcompat/view/menu/sh$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/sh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/sh$d;

.field public static final enum n:Landroidx/appcompat/view/menu/sh$d;

.field public static final enum o:Landroidx/appcompat/view/menu/sh$d;

.field public static final enum p:Landroidx/appcompat/view/menu/sh$d;

.field public static final enum q:Landroidx/appcompat/view/menu/sh$d;

.field public static final synthetic r:[Landroidx/appcompat/view/menu/sh$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/sh$d;

    const-string v1, "CPU_ACQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/sh$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/sh$d;->m:Landroidx/appcompat/view/menu/sh$d;

    new-instance v0, Landroidx/appcompat/view/menu/sh$d;

    const-string v1, "BLOCKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/sh$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/sh$d;->n:Landroidx/appcompat/view/menu/sh$d;

    new-instance v0, Landroidx/appcompat/view/menu/sh$d;

    const-string v1, "PARKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/sh$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/sh$d;->o:Landroidx/appcompat/view/menu/sh$d;

    new-instance v0, Landroidx/appcompat/view/menu/sh$d;

    const-string v1, "DORMANT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/sh$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/sh$d;->p:Landroidx/appcompat/view/menu/sh$d;

    new-instance v0, Landroidx/appcompat/view/menu/sh$d;

    const-string v1, "TERMINATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/sh$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/sh$d;->q:Landroidx/appcompat/view/menu/sh$d;

    invoke-static {}, Landroidx/appcompat/view/menu/sh$d;->c()[Landroidx/appcompat/view/menu/sh$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/sh$d;->r:[Landroidx/appcompat/view/menu/sh$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic c()[Landroidx/appcompat/view/menu/sh$d;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->m:Landroidx/appcompat/view/menu/sh$d;

    sget-object v1, Landroidx/appcompat/view/menu/sh$d;->n:Landroidx/appcompat/view/menu/sh$d;

    sget-object v2, Landroidx/appcompat/view/menu/sh$d;->o:Landroidx/appcompat/view/menu/sh$d;

    sget-object v3, Landroidx/appcompat/view/menu/sh$d;->p:Landroidx/appcompat/view/menu/sh$d;

    sget-object v4, Landroidx/appcompat/view/menu/sh$d;->q:Landroidx/appcompat/view/menu/sh$d;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/appcompat/view/menu/sh$d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/sh$d;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/sh$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/sh$d;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/sh$d;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->r:[Landroidx/appcompat/view/menu/sh$d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/sh$d;

    return-object v0
.end method
