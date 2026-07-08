.class public final Landroidx/appcompat/view/menu/pu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/pu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/pu$a$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/pu$a$a;

.field public static final c:Landroidx/appcompat/view/menu/pu$a;

.field public static final d:Landroidx/appcompat/view/menu/pu$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/pu$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/pu$a$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/pu$a;->b:Landroidx/appcompat/view/menu/pu$a$a;

    new-instance v0, Landroidx/appcompat/view/menu/pu$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/pu$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/pu$a;->c:Landroidx/appcompat/view/menu/pu$a;

    new-instance v0, Landroidx/appcompat/view/menu/pu$a;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/pu$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/pu$a;->d:Landroidx/appcompat/view/menu/pu$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/pu$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pu$a;->a:Ljava/lang/String;

    return-object v0
.end method
