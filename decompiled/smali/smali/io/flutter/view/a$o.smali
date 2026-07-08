.class public final enum Lio/flutter/view/a$o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "o"
.end annotation


# static fields
.field public static final enum m:Lio/flutter/view/a$o;

.field public static final enum n:Lio/flutter/view/a$o;

.field public static final synthetic o:[Lio/flutter/view/a$o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/flutter/view/a$o;

    const-string v1, "SPELLOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/a$o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/a$o;->m:Lio/flutter/view/a$o;

    new-instance v0, Lio/flutter/view/a$o;

    const-string v1, "LOCALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/view/a$o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/a$o;->n:Lio/flutter/view/a$o;

    invoke-static {}, Lio/flutter/view/a$o;->c()[Lio/flutter/view/a$o;

    move-result-object v0

    sput-object v0, Lio/flutter/view/a$o;->o:[Lio/flutter/view/a$o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lio/flutter/view/a$o;
    .locals 2

    sget-object v0, Lio/flutter/view/a$o;->m:Lio/flutter/view/a$o;

    sget-object v1, Lio/flutter/view/a$o;->n:Lio/flutter/view/a$o;

    filled-new-array {v0, v1}, [Lio/flutter/view/a$o;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/a$o;
    .locals 1

    const-class v0, Lio/flutter/view/a$o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/a$o;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/a$o;
    .locals 1

    sget-object v0, Lio/flutter/view/a$o;->o:[Lio/flutter/view/a$o;

    invoke-virtual {v0}, [Lio/flutter/view/a$o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/a$o;

    return-object v0
.end method
