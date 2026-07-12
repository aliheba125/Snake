.class public final Landroidx/appcompat/view/menu/sy$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/sy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/sy$b$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/sy$b$a;

.field public static final c:Landroidx/appcompat/view/menu/sy$b;

.field public static final d:Landroidx/appcompat/view/menu/sy$b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/sy$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/sy$b$a;-><init>(Landroidx/appcompat/view/menu/lj;)V

    sput-object v0, Landroidx/appcompat/view/menu/sy$b;->b:Landroidx/appcompat/view/menu/sy$b$a;

    new-instance v0, Landroidx/appcompat/view/menu/sy$b;

    const-string v1, "FOLD"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/sy$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/sy$b;->c:Landroidx/appcompat/view/menu/sy$b;

    new-instance v0, Landroidx/appcompat/view/menu/sy$b;

    const-string v1, "HINGE"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/sy$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/sy$b;->d:Landroidx/appcompat/view/menu/sy$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sy$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Landroidx/appcompat/view/menu/sy$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/sy$b;->c:Landroidx/appcompat/view/menu/sy$b;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/appcompat/view/menu/sy$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/sy$b;->d:Landroidx/appcompat/view/menu/sy$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sy$b;->a:Ljava/lang/String;

    return-object v0
.end method
